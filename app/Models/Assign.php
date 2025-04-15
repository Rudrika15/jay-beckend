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

    public function user()
    {
        return $this->belongsTo(User::class, 'userId', 'id');
    }
}
