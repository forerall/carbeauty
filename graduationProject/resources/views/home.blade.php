@extends('layouts.app')
@section('content')
    <div class="container">
        <div>laravel5.5</div>
    </div>
    <div>
        <div id="avatar" upload-name="avatar" class="image-container"></div>
    </div>
@endsection
@section('js')
    <link href="{{ asset('/box/css/control.css') }}" rel="stylesheet" type="text/css">
    <script src="{{ asset('box/plug-in/upload/jquery-ui.min.js') }}"></script>
    <script src="{{ asset('box/plug-in/upload/jquery.fileupload.js') }}"></script>
    <script src="{{ asset('box/ui.js') }}"></script>
    <script>

        $(function () {
            multiUploadImageBox($('#avatar'),'/upload?category=avatar','',80);
        })
    </script>
@endsection
