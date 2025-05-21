<?php

namespace App\Http\Controllers;

use App\Models\Transaction;
use Illuminate\Http\Request;

class TransactionController extends Controller
{
    public function index()
    {
        return Transaction::with(['user', 'book'])->get();
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'user_id' => 'required|exists:users,id',
            'book_id' => 'required|exists:books,id',
            'borrowed_at' => 'required|date',
            'returned_at' => 'nullable|date',
            'status' => 'required|string',
        ]);

        $transaction = Transaction::create($validated);

        return response()->json($transaction, 201);
    }

    public function show(Transaction $transaction)
    {
        return $transaction->load(['user', 'book']);
    }

    public function update(Request $request, Transaction $transaction)
    {
        $validated = $request->validate([
            'user_id' => 'sometimes|required|exists:users,id',
            'book_id' => 'sometimes|required|exists:books,id',
            'borrowed_at' => 'sometimes|required|date',
            'returned_at' => 'nullable|date',
            'status' => 'sometimes|required|string',
        ]);

        $transaction->update($validated);

        return response()->json($transaction);
    }

    public function destroy(Transaction $transaction)
    {
        $transaction->delete();

        return response()->json(null, 204);
    }
}
