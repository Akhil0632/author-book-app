@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-sm">
                <div class="card-header bg-primary text-white">
                    <h4 class="mb-0">Add New Author</h4>
                </div>

                <div class="card-body">
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <strong>Whoops!</strong> Please fix the following errors:
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form action="{{ route('authors.store') }}" method="POST">
                        @csrf

                        <div class="mb-3">
                            <label for="name" class="form-label">Author Name</label>
                            <input type="text" name="name" id="name" class="form-control" value="{{ old('name') }}" required>
                        </div>

                        <div class="mb-3">
                            <label for="bio" class="form-label">Bio</label>
                            <textarea name="bio" id="bio" class="form-control" rows="4">{{ old('bio') }}</textarea>
                        </div>

                        <button type="submit" class="btn btn-success w-100">Create Author</button>
                        <a href="{{ route('authors.index') }}" class="btn btn-secondary w-100 mt-2">Cancel</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

@push('styles')
    <style>
        .card {
            border-radius: 10px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            border-radius: 10px 10px 0 0;
        }

        .btn {
            transition: all 0.3s ease-in-out;
        }

        .btn:hover {
            transform: scale(1.05);
        }

        .alert {
            margin-bottom: 20px;
        }

        .form-control:focus {
            border-color: #66afe9;
            box-shadow: 0 0 5px rgba(102, 175, 233, .5);
        }
    </style>
@endpush

@push('scripts')
    <script>

        $(document).ready(function() {
            if ($('.alert').length) {
                $('html, body').animate({
                    scrollTop: $(".alert").offset().top - 100
                }, 1000);
            }

            @if ($errors->any())
                $('input, textarea').each(function() {
                    if ($(this).hasClass('is-invalid')) {
                        $(this).focus();
                        return false;
                    }
                });
            @endif
        });
    </script>
@endpush

@endsection
