<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>About Us Page</title>
    <link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.min.css')}}">
    <script src="{{asset('bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <style>
    </style>
</head>
<body class="bg-secondary bg-opacity-50">
        @include('layout.navbar')
        <div class="d-flex flex-column text-center align-items-center gap-5" style="margin: 5rem 10rem">
            <h1 class="mt-5">About EduFun</h1>
            <p class="fs-4">
                EduFun adalah perusahaan pendidikan berbasis teknologi asal Indonesia. EduFun menyediakan layanan akses pendidikan dalam format tulisan berbahasa Indonesia yang disajikan secara online melalui website.</p>
            <p class="fs-4">
                Hingga Juni 2024, EduFun memiliki lebih dari 10 ribu pengguna. EduFun hadir sebagai bentuk revolusi dari pendidikan di Indonesia dengan mengedepankan cara berpikir kritis, logis, rasional, dan sumber pengetahuan sains yang terintegrasi terhadap semua mahasiswa IT di Indonesia. EduFun bercita-cita mencetak generasi Indonesia yang memahami ilmu pengetahuan dan cinta belajar.
            </p>
        </div>
        @include('layout.footer')
</body>
</html>