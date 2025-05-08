@extends('layouts.app')

@section('content')

<div class="container">
    <h1 class="mb-4 text-center text-primary fw-bold">
        <i class="bi bi-book-half me-2"></i>Book Details
    </h1>

    <div class="card mb-4">
        <div class="card-header bg-primary text-white">
            <h4 class="mb-0">{{ $book->title }}</h4>
        </div>
        <div class="card-body">
            <p class="card-text">
                <strong><i class="bi bi-align-left me-1"></i>Description:</strong><br>
                {{ $book->description }}
            </p>
            <p class="card-text">
                <strong><i class="bi bi-person-fill me-1"></i>Author:</strong>
                {{ $book->author->name ?? 'N/A' }}
            </p>
        </div>
    </div>

    <div class="d-flex flex-wrap gap-2">
        <a href="{{ route('books.edit', $book) }}" class="btn btn-warning">
            <i class="bi bi-pencil-square me-1"></i> Edit Book
        </a>

        <form action="{{ route('books.destroy', $book) }}" method="POST" class="d-inline" onsubmit="return confirm('Are you sure you want to delete this book?');">
            @csrf
            @method('DELETE')
            <button class="btn btn-danger">
                <i class="bi bi-trash-fill me-1"></i> Delete
            </button>
        </form>

        <a href="{{ route('books.index') }}" class="btn btn-secondary">
            <i class="bi bi-arrow-left-circle me-1"></i> Back to List
        </a>
    </div>
</div>

@push('styles')
    <style>
        .card {
            border: none;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transition: transform 0.2s;
        }
        .card:hover {
            transform: scale(1.01);
        }
        .btn {
            transition: all 0.2s ease-in-out;
        }
        .btn:hover {
            transform: scale(1.05);
        }
    </style>
@endpush

@push('scripts')
    <script>
        $(function() {

        });
    </script>
@endpush

@endsection
