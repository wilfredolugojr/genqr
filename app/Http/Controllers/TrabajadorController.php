<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Trabajador;
use App\Imports\TrabajadoresImport;

use SimpleSoftwareIO\QrCode\Facades\QrCode;
class TrabajadorController extends Controller
{
    
    public function index(Request $request)
    {
        $trabajadores = Trabajador::Buscador($request->nombre)->orderBy('id','ASC')->paginate(10);

        return view( 'admin.trabajador.index')->with('trabajadores',$trabajadores);
    }
    
    
    public function store (Request $request)
    {   
        $sujeto= Trabajador::where('email', $request->email)->first();
        
        if($sujeto!="")
        {
            return back()->withStatus('Ya existe el email.');
        }

        $trabajador= new Trabajador($request->all());

        $trabajador->save();
        //Flash::success("Se ha insertado correctamente");
        

        QrCode::format('png')->size(400)->margin(2)->generate("Nombre:". $trabajador->nombre. "\nDireccion: ". $trabajador->direccion."\nCentro de Trabajo: Joven Club de Computación y Electrónica ".$trabajador->centro_trabajo."\nCargo: ".$trabajador->cargo."\n",'../public/qrcodes/'. $trabajador->nombre . '.png');

        return back()->withStatus('QR creado con exito.');
    }

    public function import (Request $request)
    {   
        if($request->file('file')!=null)
        {
            $extension = $request->file('file')->extension($request->file->getClientOriginalName());

            //dd( $request->file('file'));die;
            if ($extension == "xlsx" || $extension == "xls" || $extension == "csv" || $extension == 'ods') 
            {
                $file = $request->file('file')->store('import');

            $import = new TrabajadoresImport;
            $import->import($file);
            
            
            if ($import->failures()->isNotEmpty()) {
                return back()->withFailures($import->failures());
            }
    
    
        
    
    
                return back()->withStatus('Excel importado con exito .');
                
            }
            else return back()->withStatus('Debe Importar un archivo excel .');
            
        }

        return back()->withStatus('Seleccione un archivo excel, por favor .');
        
    }

    public function create()
    {
        return view( 'admin.trabajador.create');
    }

    public function destroy($id)
    {
        //var_dump("ldldldl");die;
        $trabajador= Trabajador::find($id);
        $trabajador->delete();
        return redirect()->route('trabajador.index')->with('status',"Trabajador eliminado con exito");;
    }
}
