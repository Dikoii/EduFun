<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HomePage</title>
    <link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.min.css')}}">
    <script src="{{asset('bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <style>
    </style>
</head>
<body class="bg-secondary bg-opacity-10">
        @include('layout.navbar')
        <div class="">
            <img src="{{ asset('Asset/homeBG.jpg') }}" class="w-100 img-fluid" style="height: 50vh; object-fit:cover;" alt="">
            <div class="d-flex flex-row gap-5 w-75 mx-auto m-5">
                <img src="{{ asset('Asset/homeBG.jpg') }}" style="width:20rem; height:10rem;" class="rounded-4" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>
        @include('layout.footer')
</body>
</html>