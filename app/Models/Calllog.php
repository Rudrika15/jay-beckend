<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Calllog extends Model
{
    //
    public function user()
    {
        return $this->belongsTo(User::class, 'userId', 'id');
    }
    public function assign()
    {
        return $this->hasMany(Assign::class, 'callId', 'id');
    }
    public function qr()
    {
        return $this->hasOne(Qr::class, 'id', 'qr_id');
    }
}
