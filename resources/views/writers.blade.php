@extends('layout.main')
@section('content')
    <h2 class="ps-5 mt-5 text-start w-100">Our Writers:</h2>
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 83.2vh;">
        <div class="row text-center d-flex w-100">
            @foreach ($writers as $writer)
                <a class="col-md-4 mb-4 text-black" href="{{ route('writerDetailPage', ['writer_id'=>$writer->id]) }}" style="text-decoration:none;">
                    <div class="writer-image mb-3">
                        <img src="{{ asset($writer->image) }}" style="width: 15rem; height: 15rem; border-radius: 50%; object-fit:cover;" alt="{{$writer->name}}">
                    </div>
                    <h5 class="card-text">{{$writer->name}}</h5>
                    <p class="card-text">Spesialis {{$writer->category->name}}</p>
                </a>
            @endforeach
        </div>
    </div>
@endsection
        
