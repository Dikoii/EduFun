@extends('layout.main')
@section('content')
    <div class="container mt-5">
        <h2>{{ $category_name}}</h2>
        <img src="{{ asset('Asset/course/'.$course->image) }}" class="img-fluid" alt="{{ $course->name }}">
        <p><small class="text-muted">{{ $course->created_at->format('d M Y') }} | by: {{ $course->writer->name }}</small></p>
        <p class="mt-3">{!! nl2br($course->description) !!}</p>
    </div>
@endsection