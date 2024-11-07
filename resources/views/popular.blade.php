@extends('layout.main')
@section('title', 'Popular Page')
@section('content')
    <div class="container" style="min-height: 80vh">
        <h1 class="my-5">Popular</h1>
        @foreach ($courses as $c)
            <div class="d-flex gap-4 mb-4">
                <img src="{{ asset('Asset/course/'.$c->image)}}" alt="{{ $c->title }}" class="rounded-5"
                    style="width: 300px; height: auto;">
                <div class="flex-grow-1">
                    <h2>{{ $c->name }}</h2>
                    <p>{{ $c->created_at->format('Y-m-d') }} | by: {{ $c->writer->name }}</p>
                    <p>{{ Str::limit($c->description, 100, '...') }}</p>
                    <div class="text-end">
                        <a href={{ route('courseDetailPage', $c->id) }} class="btn btn-primary">Read More...</a>
                    </div>
                </div>
            </div>
        @endforeach
        <div class="d-flex justify-content-center">
            {{ $courses->links() }}
        </div>
    </div>
@endsection