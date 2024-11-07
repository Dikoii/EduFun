@extends('layout.main')
@section('title', 'Read More Page')
@section('content')
    <div class="container mt-5" style="min-height:80vh">
        <h2>{{ $category_name}}</h2>
        <img src="{{ asset('Asset/course/'.$course->image) }}" class="img-fluid w-100" alt="{{ $course->name }}">
        <p><small class="text-muted">{{ $course->created_at->format('d M Y') }} | by: {{ $course->writer->name }}</small></p>
        <p class="mt-3">{!! nl2br($course->description) !!}</p>
    </div>
@endsection