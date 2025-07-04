@extends('layouts.app')

@section('content')
<div class="container mx-auto">
    <h1 class="text-2xl font-bold mb-4">Clients</h1>
    <table class="min-w-full bg-white">
        <thead>
            <tr>
                <th class="px-4 py-2">Name</th>
                <th class="px-4 py-2">Email</th>
                <th class="px-4 py-2">Phone</th>
                <th class="px-4 py-2">Birth Date</th>
            </tr>
        </thead>
        <tbody>
            @foreach($clients as $client)
            <tr>
                <td class="border px-4 py-2">{{ $client->name }}</td>
                <td class="border px-4 py-2">{{ $client->email }}</td>
                <td class="border px-4 py-2">{{ $client->phone }}</td>
                <td class="border px-4 py-2">{{ $client->date_of_birth }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
