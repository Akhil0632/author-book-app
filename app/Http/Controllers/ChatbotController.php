<?php

namespace App\Http\Controllers;

use App\Models\Author;
use App\Models\Book;
use Illuminate\Http\Request;

class ChatbotController extends Controller
{
    public function index()
    {
        return view('chatbot');
    }

    public function query(Request $request)
    {
        $message = strtolower($request->input('query'));
        $response = 'Sorry, I didn\'t understand that.';

        if (str_contains($message, 'how many authors')) {
            $response = 'There are ' . Author::count() . ' authors.';
        } elseif (str_contains($message, 'how many books')) {
            $response = 'There are ' . Book::count() . ' books.';
        } elseif (str_contains($message, 'list top 5 authors')) {
            $topAuthors = Author::withCount('books')->orderByDesc('books_count')->limit(5)->get();
            $response = "Top 5 Authors:<br>" . $topAuthors->pluck('name')->implode('<br>');
        }

        return response()->json(['response' => $response]);
    }
}
