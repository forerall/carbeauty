<?php

namespace App\Exceptions;

use App\Services\Output;
use Exception;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Session\TokenMismatchException;
use Illuminate\Support\Facades\Input;
use Illuminate\Validation\ValidationException;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    /**
     * Report or log an exception.
     *
     * This is a great spot to send exceptions to Sentry, Bugsnag, etc.
     *
     * @param  \Exception $exception
     * @return void
     */
    public function report(Exception $exception)
    {
        parent::report($exception);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Exception $exception
     * @return \Illuminate\Http\Response
     */
    public function render($request, Exception $exception)
    {
        if ($exception instanceof ModelNotFoundException) {
            if (Input::ajax()) {
                return response()->json(Output::Fail('数据不存在'));
            } else {
                return response()->view('errors.503', ['error' => '页面不存在']);
            }
        }
        if ($exception instanceof ValidationException) {
            if (Input::ajax()) {
                return response()->json(Output::ParameterError('参数错误')->with('errors', $exception->validator->errors()->toArray()));
            }
        }
        if ($exception instanceof TokenMismatchException) {
            if (Input::ajax()) {
                return response()->json(Output::Fail('系统错误,刷新页面后重试'));
            } else {
                return back();
            }
        }

        if (config('app.debug') === false) {
            if (Input::ajax()) {
                return response()->json(Output::Fail('系统错误'));
            } else {
                return response()->view('errors.500', ['error' => '系统错误']);
            }
        } else {
            //测试环境ajax请求
            if (Input::ajax()) {
               // return response()->json(Output::Fail($exception->getMessage() ?: get_class($exception)));
            }
        }

        return parent::render($request, $exception);
    }
}
