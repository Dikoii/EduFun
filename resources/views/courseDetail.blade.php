<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ $category_name }}</title>
    <link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.min.css')}}">
    <script src="{{asset('bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <style>
    </style>
</head>
<body class="bg-secondary bg-opacity-50">
        @include('layout.navbar')
        <div class="container mt-5">
            <h2>{{ $category_name}}</h2>
            <img src="{{ asset('Asset/homeBG.jpg') }}" class="img-fluid" alt="{{ $course->name }}">
            <p><small class="text-muted">{{ $course->created_at->format('d M Y') }} | by: {{ $course->writer->name }}</small></p>
            <p class="mt-3">{{ $course->description }}</p>
        </div>
        @include('layout.footer')
</body>
</html>