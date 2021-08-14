<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Trabajador extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('trabajador', function (Blueprint $table) {
            $table->increments('id');
            $table->text('nombre');
            $table->string('direccion');
            $table->string('ci');
            $table->string('cargo');

            $table->string('foto');
            $table->string('centro_trabajo');
            $table->string('qr');
            $table->string('telefono');
            $table->string('email', 50)->unique();


            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
