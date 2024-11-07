@extends('layout.main')
@section('title', 'Category Detail Page')
@section('content')
    <div class="container mt-5 mb-5">
        <h2 class="mt-5 mb-4">{{ $category_name }}</h2>
        @foreach ($courses as $c)
            <div class="d-flex flex-row gap-5 m-5 bg-light p-3">
                <img src="{{ asset('Asset/course/'.$c->image) }}" style="width:20rem; height:10rem;" class="rounded-4" alt="...">
                <div class="card-body">
                    <h5 class="card-title">{{$c->name}}</h5>
                    <p class="card-text text-dark">
                            {{ $c->created_at->format('d M Y') }} | by: {{ $c->writer->name }}
                    </p>
                    <p class="card-text">{{ Str::limit($c->description, 100) }}</p>
                    <a href="{{ route('courseDetailPage', ['course_id' => $c->id]) }}" class="btn btn-dark">Read more...</a>
                </div>
            </div>
        @endforeach
    </div>
@endsection