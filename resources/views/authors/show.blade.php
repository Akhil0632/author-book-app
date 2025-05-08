@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="mb-4 text-center text-primary fw-bold">Author Details</h1>

    <div class="card shadow-sm border-0 mb-4">
        <div class="card-body">
            <h3 class="card-title text-dark">{{ $author->name }}</h3>
            <p class="card-text mt-3">
                <strong>Bio:</strong> {{ $author->bio ?? 'No bio available.' }}
            </p>
        </div>
    </div>

    <h4 class="text-secondary mb-3">Books by {{ $author->name }}</h4>

    @if ($author->books->count())
        <div class="table-responsive">
            <table class="table table-hover table-bordered align-middle shadow-sm">
                <thead class="table-light">
                    <tr>
                        <th>#</th>
                        <th>Book Title</th>
                        <th>Description</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($author->books as $index => $book)
                        <tr>
                            <td>{{ $index + 1 }}</td>
                            <td class="fw-semibold">{{ $book->title }}</td>
                            <td>{{ Str::limit($book->description, 100) }}</td>
                            <td>
                                <a href="{{ route('books.show', $book) }}" class="btn btn-info btn-sm me-1">
                                    <i class="bi bi-eye"></i> View
                                </a>
                                <a href="{{ route('books.edit', $book) }}" class="btn btn-warning btn-sm me-1">
                                    <i class="bi bi-pencil-square"></i> Edit
                                </a>
                                <form action="{{ route('books.destroy', $book) }}" method="POST" class="d-inline-block" onsubmit="return confirm('Are you sure you want to delete this book?');">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger btn-sm">
                                        <i class="bi bi-trash"></i> Delete
                                    </button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    @else
        <div class="alert alert-info text-center mt-4">No books found for this author.</div>
    @endif

    <div class="mt-4 d-flex gap-2">
        <a href="{{ route('authors.edit', $author) }}" class="btn btn-warning">
            <i class="bi bi-pencil-square"></i> Edit Author
        </a>
        <a href="{{ route('authors.index') }}" class="btn btn-secondary">
            <i class="bi bi-arrow-left-circle"></i> Back to Authors List
        </a>
    </div>
</div>

@push('styles')
    <style>
        .table td, .table th {
            vertical-align: middle;
        }

        .btn {
            transition: 0.2s all ease-in-out;
        }

        .btn:hover {
            transform: scale(1.05);
        }

        .card-title {
            font-weight: 600;
        }

        .card {
            border-radius: 10px;
        }

        .table {
            border-radius: 10px;
            overflow: hidden;
        }

    </style>
@endpush

@push('scripts')
    <script>
        $(document).ready(function () {

            if ($('.alert').length) {
                $('html, body').animate({
                    scrollTop: $('.alert').offset().top - 80
                }, 600);
            }
        });
    </script>
@endpush

@endsection
