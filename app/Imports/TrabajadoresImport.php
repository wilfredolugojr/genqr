<?php

namespace App\Imports;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

use App\Trabajador;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\Importable;
use Maatwebsite\Excel\Concerns\RegistersEventListeners;
use Maatwebsite\Excel\Concerns\SkipsErrors;
use Maatwebsite\Excel\Concerns\SkipsFailures;
use Maatwebsite\Excel\Concerns\SkipsOnError;
use Maatwebsite\Excel\Concerns\SkipsOnFailure;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;

use Maatwebsite\Excel\Concerns\WithBatchInserts;
use Maatwebsite\Excel\Concerns\WithChunkReading;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithValidation;
use Maatwebsite\Excel\Events\AfterImport;
use Maatwebsite\Excel\Validators\Failure;
use Throwable;

class TrabajadoresImport implements ToCollection,WithHeadingRow,
SkipsOnError,
WithValidation,
SkipsOnFailure,
WithChunkReading,
ShouldQueue,
WithEvents
{
    use Importable, SkipsErrors, SkipsFailures, RegistersEventListeners;
   
    public function collection(Collection $rows)
    { 

        
            //var_dump($rows);die;
        foreach ($rows as $row) {
            $trabajador = Trabajador::create([
                'nombre' => $row['nombre_del_trabajador'],
                //'email' => $row['email'],
                //'direccion' => $row['direccion'],
                //  'telefono' => $row['telefono'],
                'centro_trabajo'=> $row['joven_club'],
                'ci'=> $row['ci'],
                'cargo'=>$row['descripcion_del_cargo']


            ]);
            
           

         QrCode::format('png')->size(400)->margin(2)->generate("Nombre y apellidos:". $row['nombre_del_trabajador'] ."\nCI : ". $row['ci']."\nDireccion Particular: " . "\nTelefono :" . "\nEmail: ". "\nWeb: http://www.pri.jovenclub.cu" . "\nCentro de Trabajo: Joven Club de Computación y Electrónica ".$row['joven_club']." o" .$row['municipio']. "\nCargo: ".$row['descripcion_del_cargo']."\n",'../public/qrcodes/'. $row['nombre_del_trabajador'] . '.png');

            




            

        


            
    }

      

        
    }

    public function rules(): array
    {
        return [
            '*.email' => ['unique:trabajador,email']
        ];
    }

    public function chunkSize(): int
    {
        return 1000;
    }

    public static function afterImport(AfterImport $event)
    {
    }

    public function onFailure(Failure ...$failure)
    {
    }

    

    
}
