<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
   return view('admin.trabajador.create');
});

//Route::get('/', 'TrabajadorController@index');


Route::Resource('trabajador','TrabajadorController');
Route::post('/trabajadores/import', 'TrabajadorController@import');
Route::get('trabajadores/{id}/destroy',[
   'uses'=>'TrabajadorController@destroy',
   'as'  =>'trabajador.destroy']
);

Route::Resource('centro','CentroTrabajoController');

