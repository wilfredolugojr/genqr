<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CentroTrabajoController extends Controller
{
    public function index(Request $request)
    {
        $centros = CentroTrabajo::Buscador($request->nombre)->orderBy('id','ASC')->paginate(5);

        return view( 'admin.centro.index')->with('centros',$centros);
    }

    public function create()
    {
        return view( 'admin.centro.create');
    }
 /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store (Request $request)
    {   
        //dd($request->all());
        $centro= new CentroTrabajo($request->all());
        $centro->save();
        //Flash::success("Se ha insertado correctamente");
        return redirect()->route('centros.index')->with('status',"Centro guardado con exito");



    }

    public function destroy($id)
    {
        $centro= CentroTrabajo::find($id);
        $centro->delete();
        return redirect()->route('centro.index')->with('status',"Centro eliminado con exito");;
    }
}
