<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Assign extends Model
{
    //
    public function call()
    {
        return $this->belongsTo(Calllog::class, 'callId', 'id');
    }
}
