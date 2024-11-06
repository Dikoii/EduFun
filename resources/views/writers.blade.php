<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Writers Page</title>
    <link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.min.css')}}">
    <script src="{{asset('bootstrap/js/bootstrap.bundle.min.js')}}"></script>
</head>
<body class="bg-secondary bg-opacity-50">
        @include('layout.navbar')
        <h2 class="ps-5 mt-5 text-start w-100">Our Writers:</h2>
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 83.2vh;">
            <div class="row text-center d-flex w-100">
                <div class="col-md-4 mb-4">
                    <div class="writer-image mb-3">
                        <img src="{{ asset('Asset/homeBG.jpg') }}" style="width: 15rem; height: 15rem; border-radius: 50%;" alt="Raka Putra Wicaksono">
                    </div>
                    <h5 class="card-title">Raka Putra Wicaksono</h5>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="writer-image mb-3">
                        <img src="{{ asset('Asset/homeBG.jpg') }}"  style="width: 15rem; height: 15rem; border-radius: 50%;"  alt="Bia Mecca Annisa">
                    </div>
                    <h5 class="card-title">Bia Mecca Annisa</h5>
                    <p class="card-text">Spesialis Data Science</p>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="writer-image mb-3">
                        <img src="{{ asset('Asset/homeBG.jpg') }}"  style="width: 15rem; height: 15rem; border-radius: 50%;" alt="Abi Firmansyah">
                    </div>
                    <h5 class="card-title">Abi Firmansyah</h5>
                    <p class="card-text">Spesialis Network Security</p>
                </div>        
            </div>
        </div>
        @include('layout.footer')
</body>
</html>