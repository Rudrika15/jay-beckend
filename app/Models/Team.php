<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Team extends Model
{
    //
    public function members()
    {
        return $this->hasMany(Teammember::class, 'teamId');
    }
}
