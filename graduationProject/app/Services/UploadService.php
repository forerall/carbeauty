<?php
/**
 * Created by PhpStorm.
 * User: arts-mgcx
 * Date: 2016/10/19
 * Time: 11:45
 */
namespace App\Services;

use App\Tools\Vendor\Image;
use Illuminate\Http\Request;

class UploadService
{
    protected $fileSystemDriver = 'uploads';
    protected $categoryName = 'category';
    protected $currentCategory = '';
    protected $config = [
        'avatar' => [
            'path' => 'images/avatar',
            'type' => 'image',
            'size' => 4,//单位M
            'thumb' => true,
            'thumb_width' => [200],
            'thumb_height' => [200],
            'thumb_ext' => ['_s'],
            'thumb_way' => 'auto',// by_width 按宽切图
        ],
        'goods' => [
            'path' => 'images/goods',
            'type' => 'image',
            'size' => 4,//单位M
        ],
        'category' => [
            'path' => 'images/category',
            'type' => 'image',
            'size' => 4,//单位M
        ],
        'banner' => [
            'path' => 'images/banner',
            'type' => 'banner',
            'size' => 4,//单位M
        ],
        'file' => [
            'path' => 'images/file',
            'type' => 'file',
            'size' => 4,//单位M
        ],
    ];


    public function saveUploadFile(Request $request)
    {
        $this->currentCategory = $request->get($this->categoryName);


        $config = $this->getConfig();
        if ($request->files->count() <= 0) {
            throw new \Exception('upload file is empty');
        }
        $files = [];
        $webPath = $this->getWebPath();
        $localPath = $this->localPath();
        //遍历所有文件

        foreach ($request->allFiles() as $file) {
            //音频类型不改变后缀名
            if ($config['type'] == 'audio') {
                $ext = strrchr($file->getClientOriginalName(), '.');
                $randomName = $file->hashName();
                $randomName = explode('.', $randomName)[0] . $ext;
                $save = $file->storeAs($config['path'], $randomName, $this->fileSystemDriver);
            } else {
                $save = $file->store($config['path'], $this->fileSystemDriver);
            }
            $filename = basename($save);
            $files[] = [
                'clientFilename' => $file->getClientOriginalName(),
                'filename' => $filename,
                'thumb' => [
                    ['filename' => $filename]
                ],
            ];
        }
        //生成缩略图
        if (array_key_exists('thumb', $config) && $config['thumb']) {
            foreach ($files as &$file) {
                $srcFile = $localPath . $file['filename'];
                $thumbs = $this->thumb($srcFile, $config);
                $file['thumb'] = $thumbs;
            }
        }
        //
        foreach ($files as &$f) {
            $f['type'] = $config['type'];
            $f['webPath'] = $webPath . '/' . $f['filename'];
            $f['webFullPath'] = asset($webPath . '/' . $f['filename']);
            foreach ($f['thumb'] as &$t) {
                $t['type'] = $config['type'];
                $t['webPath'] = $webPath . '/' . $t['filename'];
                $t['webFullPath'] = asset($webPath . '/' . $t['filename']);
            }
        }

        return Output::Success('上传成功')
            ->with('files', $files);
    }


    /**
     * 生成图片缩略图
     * @param $srcFile 源文件
     * @param $config 配置
     * @return array 缩略图文件名数组
     * @throws \Exception
     */
    public function thumb($srcFile, $config)
    {
        //缩略图
        if (!array_key_exists('thumb_way', $config)
            || !array_key_exists('thumb_width', $config)
            || !array_key_exists('thumb_height', $config)
            || !array_key_exists('thumb_ext', $config)
        ) {
            throw new \Exception('thumb config error');
        }
        $thumb_way = $config['thumb_way'];
        $width = $config['thumb_width'];
        $height = $config['thumb_height'];
        $ext = $config['thumb_ext'];

        $thumb_arr = [];
        $srcImage = Image::openFromFile($srcFile);
        foreach ($ext as $k => $v) {
            $newFile = substr($srcFile, 0, strrpos($srcFile, '.')) . $v . substr($srcFile, strrpos($srcFile, '.'));
            $newFileName = basename($newFile);
            if ($thumb_way == 'by_width') {
                $thumb = Image::thumbByWidth($srcImage, $width[$k], $height[$k]);
            } else {
                $thumb = Image::thumb($srcImage, $width[$k], $height[$k]);
            }
            $thumb->save($newFile);
            $thumb_arr[] = [
                'filename' => $newFileName,
            ];
        }
        $srcImage->destroy();
        return $thumb_arr;
    }

    /**
     * 生成图片水印
     * @param $category
     * @param $file
     * @throws \Exception
     */
    public function water($path, $file)
    {
        /*
        $config = $this->getConfig();
        $text = $config['text'];
        $textLent = mb_strlen($text);
        $color = [255, 255, 255];
        $font = public_path() . '/uploads/images/create/msyh.ttc';
        $font = public_path() . '/uploads/images/create/FZCSJW.TTF';
        foreach ($thumb_arr as $val) {
            if ($category == 'create') {
                $file = public_path() . $val['filename'];
                $img = Image::openFromFile($file);
                $im = $img->handle;
                $w = imagesx($im);
                $h = imagesy($im);
                //$fontSize = intval($w*0.6/$textLent);
                $fontSize = intval($w * 0.8 / $textLent / 1.4);
                //$c = imagecolorallocate($im, $color[0], $color[1], $color[2]);
                $c = imagecolorallocatealpha($im, $color[0], $color[1], $color[2], 65);

                $rr = imagettfbbox($fontSize, 0, $font, $text);
                $dstX = max(1, $w / 2 - ($rr[4] - $rr[0]) / 2);
                $dstY = max(1, $h / 2 - ($rr[5] - $rr[1]) / 2);
                imagefttext($im, $fontSize, 0, $dstX, $dstY, $c, $font, mb_convert_encoding($text, 'html-entities', 'utf-8'));
                $img->save($file);
            }
        }*/
    }


    protected function getConfig()
    {
        if (empty($this->currentCategory)) {
            throw new \Exception('category is empty');
        }
        if (!array_key_exists($this->currentCategory, $this->config)) {
            throw new \Exception('upload category config is empty');
        }

        return $this->config[$this->currentCategory];
    }

    /**
     * 本地路径
     * @return string
     */
    public function localPath()
    {
        $config = $this->getConfig();
        return public_path('uploads/' . $config['path']) . '/';
    }

    /**
     * web路径
     * @return string
     */
    protected function getWebPath()
    {
        $config = $this->getConfig();
        return '/uploads/' . $config['path'];
    }


    /**
     * 上传一张图片
     * @param Request $request
     * @return array
     * @throws \Exception
     */
    public function saveFiles(Request $request)
    {
        $category = $request->get($this->categoryName);
        $config = $this->getConfig($category);

        if ($request->files->count() <= 0) {
            throw new \Exception('upload file is empty');
        }
        $files = [];
        $path = '/' . $this->uploadPath() . $config['path'] . '/';
        foreach ($request->allFiles() as $file) {

            if ($config['type'] == 'audio') {
                $ext = strrchr($file->getClientOriginalName(), '.');
                $randomName = $file->hashName();
                $randomName = explode('.', $randomName)[0] . $ext;
                $save = $file->storeAs($config['path'], $randomName, $this->fileSystemDriver);
            } else {
                $save = $file->store($config['path'], $this->fileSystemDriver);
            }
            $index = strrpos($save, '/') + 1;
            $filename = $path . substr($save, $index);
            $files[] = [
                'filename' => $filename,
                'thumb' => [asset($filename)],
            ];
        }
        //生成缩略图
        if (array_key_exists('thumb', $config) && $config['thumb']) {
            foreach ($files as &$file) {
                $srcFile = $this->rootPath() . ltrim($file['filename'], '/');
                $thumbs = $this->thumb($srcFile, $config);
                array_walk($thumbs, function (&$thumb, $key, $path) {
                    $thumb = asset($path . $thumb);
                }, $path);
                $file['thumb'] = $thumbs;
            }
        }
        return $this->outputFormat($files, $config['type']);
    }
}