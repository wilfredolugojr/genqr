<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Contracts\Auth\MustVerifyEmail;

class Trabajador extends Model
{
    protected $table ='trabajador';
    protected $fillable =['nombre', 'direccion','centro_trabajo','cargo','telefono','email','ci','imagen','qr'];

    public function scopeBuscador($query,$nombre)
    {
        return $query->where('nombre','LIKE',"%$nombre%");
    }


}


