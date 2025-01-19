@extends('layout.main')
@section('title', 'Home Page')
@section('content')
        <div class="">
            <img src="{{ asset('Asset/homeBG.jpg') }}" class="w-100 img-fluid" style="height: 50vh; object-fit:cover;" alt="">
            <form class="d-flex" action="{{route('indexSearch')}}" method="POST">
                @csrf
                <input class="form-control me-2 inputSearch" type="text"name="inputSearch" id="inputSearch" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
              </form>
            @foreach ($courses as $course)
            <div class="d-flex gap-4 mt-4 mb-4 ms-4 me-4">
                <img src="{{ asset('Asset/course/'.$course->image) }}" alt="{{ $course->title }}" class="rounded-5"
                    style="width: 300px; height: auto;">
                <div class="flex-grow-1">
                    <h2>{{ $course->name }}</h2>
                    <p>{{ $course->created_at->format('Y-m-d') }} | by: {{ $course->writer->name }}</p>
                    <p>{{ Str::limit($course->description, 100, '...') }}</p>
                    <div class="text-end">
                        <a href={{ route('courseDetailPage', $course->id) }} class="btn btn-primary">Read More...</a>
                    </div>
                </div>
            </div>
        @endforeach
        </div>
@endsection