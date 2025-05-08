@extends('layouts.app')

@section('content')

<div class="container">
    <h1 class="mb-4 text-center text-primary fw-bold"><i class="bi bi-journal-bookmark-fill me-2"></i>Books</h1>

    @if (session('success'))
        <div class="alert alert-success fade-out" id="success-alert">
            <i class="bi bi-check-circle-fill me-1"></i> {{ session('success') }}
        </div>
    @endif

    <div class="mb-3 text-end">
        <a href="{{ route('books.create') }}" class="btn btn-success">
            <i class="bi bi-plus-circle me-1"></i> Add New Book
        </a>
    </div>

    @if($books->count())
        <div class="table-responsive">
            <table class="table table-bordered table-striped table-hover align-middle">
                <thead class="table-primary">
                    <tr class="text-center">
                        <th>#</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Author</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($books as $index => $book)
                        <tr>
                            <td class="text-center">{{ $index + 1 }}</td>
                            <td>{{ $book->title }}</td>
                            <td>{{ Str::limit($book->description, 100) }}</td>
                            <td>{{ $book->author->name ?? 'Unknown' }}</td>
                            <td class="text-center">
                                <a href="{{ route('books.show', $book) }}" class="btn btn-info btn-sm" title="View">
                                    <i class="bi bi-eye-fill"></i> View
                                </a>
                                <a href="{{ route('books.edit', $book) }}" class="btn btn-warning btn-sm" title="Edit">
                                    <i class="bi bi-pencil-square"></i> Edit
                                </a>
                                <form action="{{ route('books.destroy', $book) }}" method="POST" class="d-inline" onsubmit="return confirm('Are you sure you want to delete this book?');">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger btn-sm" title="Delete">
                                        <i class="bi bi-trash-fill"></i> Delete
                                    </button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    @else
        <div class="alert alert-info text-center">
            <i class="bi bi-info-circle-fill"></i> No books found.
        </div>
    @endif

    <div class="text-center mt-4">
        <a href="{{ route('authors.index') }}" class="btn btn-secondary shadow-sm">
            <i class="bi bi-arrow-left-circle"></i> Back to Authors
        </a>
    </div>
</div>

@push('styles')
    <style>
        .table-hover tbody tr:hover {
            background-color: #f6f9ff;
        }
        .btn {
            transition: all 0.2s ease-in-out;
        }
        .btn:hover {
            transform: scale(1.05);
        }
        .fade-out {
            transition: opacity 1s ease-out;
        }
    </style>
@endpush

@push('scripts')
    <script>
        $(document).ready(function () {
            setTimeout(() => {
                $('#success-alert').fadeOut('slow');
            }, 3000);
        });
    </script>
@endpush

@endsection
