<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UtilisateurSeeder extends Seeder
{
    public function run(): void
    {
        DB::table('utilisateurs')->insert([
            'id' => 1,
            'user_role_id' => 1,
            'name' => 'Admin',
            'email' => 'admin@admin.com',
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.ogmbBT8MwfoIlI.', // "password"
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
}
