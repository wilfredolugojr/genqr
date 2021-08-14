

@extends('admin.welcome')

@section( 'content' )




                <div style="width: 80%;
margin-left: 250px;
margin-top: 80px;" class="panel">
                  <div class="panel-body">


                <div class="col-md-12 padding-0" style="padding-bottom:20px;">
                    <div class="col-md-6" style="padding-left:10px;">
                        
                        <a href="{{route('trabajador.create')}}" class="btn  btn-primary ">Crear <i class="fa fa-fw fa-plus-square-o"></i></a>
                    </div>
                    <div class="col-md-6" style="padding-left:10px;">

                        <form  action="{{ route('trabajador.index')}}" method='get'  style='float:right'class="input-group input-group-sm  col-xs-2">
                            <input style="width: 170px;" type="text" class="form-control" name="nombre">
                            <span class="input-group-btn">
                            <button type="submit" class="btn btn-info btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                        </form>
                    </div>


                 </div>




                  <div class="responsive-table">
                      
                    <table class="table table-striped table-bordered" width="100%" cellspacing="0">
                    <thead>
                      <tr>
                      
                        <th>Nombre</th>
                        <th>NI</th>
                  
                        <th>telefono</th>
                        <th>email</th>

                 
                  <th>Acciones</th>
                      </tr>
                    </thead>
                    <tbody>
                    @foreach($trabajadores as $trabajador)
             
             <tr>
               <td>{{$trabajador->nombre}}</td>
               <td>{{$trabajador->ci}}
               </td>
              
               <td>{{$trabajador->telefono}}</td>
               <td>{{$trabajador->email}}</td>

               <td>
             
                   <a href="{{route('trabajador.destroy',$trabajador->id)}}" onclick="return confirm('Seguro que deseas eliminarlo')" class="btn btn-danger"><i class="fa fa-fw fa-trash-o"></i></a>
                   
             </td>
             </tr>
             @endforeach
                    </tbody>
                  </table>
                  </div>
                  {!! $trabajadores->render() !!}
                </div>
              </div>
           
         







@endsection