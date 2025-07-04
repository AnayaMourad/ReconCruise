<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserRoleSeeder extends Seeder
{
    public function run(): void
    {
        DB::table('user_roles')->insert([
            ['id' => 1, 'name' => 'admin', 'description' => 'Administrator'],
            ['id' => 2, 'name' => 'agent', 'description' => 'Agent'],
            ['id' => 3, 'name' => 'comptable', 'description' => 'Comptable'],
            ['id' => 4, 'name' => 'client', 'description' => 'Client'],
        ]);
    }
}
