@extends('layout.main')
@section('content')
    <div style="min-height:80vh">  
        <div class="d-flex gap-4 mt-5" style="padding-left: 15.5rem;">
            <img src="{{ asset($writer->image) }}" class="rounded-circle" alt="" style="width: 6%; height: 5rem">
            <div class="d-flex flex-column align-items-center justify-content-center">
                <p class="fw-semibold">{{ $writer->name }}</p>
                <p>Spesialis {{ $writer->category->name }}</p>
            </div>
        </div>
        <div class="container-fluid d-flex flex-column justify-content-center align-items-center pt-5 gap-4 mb-5">
            @foreach ($courses as $course)
            <div class="gap-3 d-flex flex-row w-75">
                <div class="w-25">
                    <img src="{{ asset('Asset/course/'.$course->image) }}" class="card-img-top h-75 img-fluid rounded rounded-5" alt="...">
                </div>
                <div class="card-body w-100">
                    <h5 class="card-title fs-2">{{ $course->name }}</h5>
                    <p class="m-0">{{ $course->created_at->format('d M Y') }} | by: {{ $course->writer->name}}</p>
                    <p class="card-text fs-5">{{ Str::limit($course->description, 150) }}</p>
                    <div class="d-flex justify-content-end">
                        <a href="{{ route('courseDetailPage', $course->id) }}" class="btn rounded rounded-5 bg-dark text-light w-25">read more...</a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
@endsection