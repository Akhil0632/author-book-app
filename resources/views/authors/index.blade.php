@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="mb-4 text-center text-primary fw-bold">All Authors</h1>

    @if (session('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif

    <div class="d-flex justify-content-between align-items-center mb-3">
        <a href="{{ route('authors.create') }}" class="btn btn-success shadow-sm">
            <i class="bi bi-plus-lg"></i> Add New Author
        </a>
    </div>

    @if ($authors->count())
        <div class="table-responsive">
            <table class="table table-striped table-bordered align-middle text-center shadow-sm">
                <thead class="table-primary">
                    <tr>
                        <th>#</th>
                        <th>Author Name</th>
                        <th>Number of Books</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($authors as $index => $author)
                        <tr>
                            <td>{{ $index + 1 }}</td>
                            <td>{{ $author->name }}</td>
                            <td>{{ $author->books->count() }}</td>
                            <td>
                                <a href="{{ route('authors.show', $author) }}" class="btn btn-info btn-sm me-1">
                                    <i class="bi bi-eye"></i> View
                                </a>
                                <a href="{{ route('authors.edit', $author) }}" class="btn btn-warning btn-sm me-1">
                                    <i class="bi bi-pencil-square"></i> Edit
                                </a>
                                <form action="{{ route('authors.destroy', $author) }}" method="POST" class="d-inline-block" onsubmit="return confirm('Are you sure you want to delete this author?');">
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
        <div class="alert alert-info text-center">No authors available.</div>
    @endif

    <div class="text-center mt-4">
        <a href="{{ route('books.index') }}" class="btn btn-secondary shadow-sm">
            <i class="bi bi-arrow-left-circle"></i> Back to Books
        </a>
    </div>
</div>

@push('styles')
    <style>
        .table {
            border-radius: 10px;
            overflow: hidden;
        }

        .table th, .table td {
            vertical-align: middle;
        }

        .btn {
            transition: transform 0.2s ease-in-out;
        }

        .btn:hover {
            transform: scale(1.05);
        }

        .alert {
            margin-top: 10px;
        }

        h1 {
            font-weight: bold;
            text-transform: uppercase;
        }
    </style>
@endpush

@push('scripts')
    <script>
        $(document).ready(function () {

            if ($('.alert').length) {
                $('html, body').animate({
                    scrollTop: $(".alert").offset().top - 100
                }, 500);
            }
        });
    </script>
@endpush

@endsection
