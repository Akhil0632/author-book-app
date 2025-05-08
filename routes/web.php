<?php

use App\Http\Controllers\AuthorController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\ChatbotController;
use Illuminate\Support\Facades\Route;

Route::resource('authors', AuthorController::class);
Route::resource('books', BookController::class);
Route::get('/chatbot', [ChatbotController::class, 'index'])->name('chatbot');
Route::post('/chatbot/query', [ChatbotController::class, 'query'])->name('chatbot.query');
