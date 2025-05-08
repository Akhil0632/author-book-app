@extends('layouts.app')

@section('content')

<div class="container">
    <h1 class="mb-4 text-center text-success fw-bold"><i class="bi bi-book-half me-2"></i>Add New Book</h1>

    @if ($errors->any())
        <div class="alert alert-danger">
            <strong><i class="bi bi-exclamation-triangle-fill"></i> Please fix the following errors:</strong>
            <ul class="mb-0">
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <div class="card p-4">
        <form action="{{ route('books.store') }}" method="POST">
            @csrf

            <div class="mb-3">
                <label for="title" class="form-label">Book Title <span class="text-danger">*</span></label>
                <input type="text" name="title" class="form-control" value="{{ old('title') }}" required>
            </div>

            <div class="mb-3">
                <label for="description" class="form-label">Book Description</label>
                <textarea name="description" class="form-control" rows="4">{{ old('description') }}</textarea>
            </div>

            <div class="mb-3">
                <label for="author_id" class="form-label">Select Author <span class="text-danger">*</span></label>
                <select name="author_id" class="form-select" required>
                    <option value="">-- Choose Author --</option>
                    @foreach($authors as $author)
                        <option value="{{ $author->id }}" {{ old('author_id') == $author->id ? 'selected' : '' }}>
                            {{ $author->name }}
                        </option>
                    @endforeach
                </select>
            </div>

            <div class="d-flex gap-2">
                <button type="submit" class="btn btn-success">
                    <i class="bi bi-check-circle"></i> Create Book
                </button>
                <a href="{{ route('books.index') }}" class="btn btn-secondary">
                    <i class="bi bi-x-circle"></i> Cancel
                </a>
            </div>
        </form>
    </div>
</div>

@push('styles')
    <style>
        .form-label {
            font-weight: 600;
        }

        .form-control:focus, .form-select:focus {
            border-color: #198754;
            box-shadow: 0 0 0 0.2rem rgba(25, 135, 84, 0.25);
        }

        .card {
            border-radius: 10px;
            box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
        }

        .btn:hover {
            transform: scale(1.03);
        }
    </style>
@endpush

@push('scripts')
    <script>
        $(document).ready(function () {
            if ($('.alert').length) {
                $('html, body').animate({
                    scrollTop: $('.alert').offset().top - 100
                }, 500);
            }
        });
    </script>
@endpush

@endsection
