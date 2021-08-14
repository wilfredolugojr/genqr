<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CentroTrabajo extends Model
{
    protected $table ='centro_trabajo';
    protected $fillable =['nombre', 'direccion','telefono','email'];
}
