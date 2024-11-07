<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title', 'EduFun')</title>
    <link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.min.css')}}">
    <script src="{{asset('bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <style>
    ::-webkit-scrollbar {
            width: 0px;
            background: transparent;
    }
    </style>
</head>
<body class="bg-secondary bg-opacity-25">
        @include('layout.navbar')
        @yield('content')
        @include('layout.footer')
</body>
</html>