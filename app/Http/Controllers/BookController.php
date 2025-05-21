<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Illuminate\Http\Request;

class BookController extends Controller
{
    public function index()
    {
        return Book::all();
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'author' => 'required|string|max:255',
            'isbn' => 'required|string|max:20|unique:books',
            'published_year' => 'required|integer',
            'copies_available' => 'required|integer',
        ]);

        $book = Book::create($validated);

        return response()->json($book, 201);
    }

    public function show(Book $book)
    {
        return $book;
    }

    public function update(Request $request, Book $book)
    {
        $validated = $request->validate([
            'title' => 'sometimes|required|string|max:255',
            'author' => 'sometimes|required|string|max:255',
            'isbn' => 'sometimes|required|string|max:20|unique:books,isbn,' . $book->id,
            'published_year' => 'sometimes|required|integer',
            'copies_available' => 'sometimes|required|integer',
        ]);

        $book->update($validated);

        return response()->json($book);
    }

    public function destroy(Book $book)
    {
        $book->delete();

        return response()->json(null, 204);
    }
}
