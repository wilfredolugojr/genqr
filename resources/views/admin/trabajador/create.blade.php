
@extends('admin.welcome')
@section( 'content' )


                
                <div class="form-element">
                  <div class="col-md-12 padding-0">
                  <div class="col-md-2">
                    <div class="col-md-12 panel" style="padding-top:30px;padding-bottom:30px;">
                      <div class="col-md-12 panel-body">
                       <div class="col-md-8 padding-0">
                        <center><div type="text" id="noui-range" style="height:400px;"></div>
                        </center>
                      </div>
                    </div>
                  </div>
                </div>
                
                   
                <div class="col-md-10">
                @if (session('status'))

                <div style="margin-top: 70px;margin-bottom: -70px;" class="col-md-6">
                            <div class="alert alert-primary col-md-12 col-sm-12  alert-icon alert-dismissible fade in" role="alert">
                              <div class="col-md-2 col-sm-2 icon-wrapper text-center">
                               </div>
                                <div class="col-md-10 col-sm-10">
                                  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                                   
                                  {{ session('status') }}
                                </p>
                                </div>
                              </div>
                            </div>
                    @endif

                    @if (isset($errors) && $errors->any())
                    <div class="col-md-6">
                          <div class="alert col-md-12 col-sm-12 alert-icon alert-danger alert-dismissible fade in" role="alert">
                            <div class="col-md-2 col-sm-2 icon-wrapper text-center">
                              <span class="fa fa-flash fa-2x"></span></div>
                              <div class="col-md-10 col-sm-10">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                                <p><strong>Danger!</strong> 
                                @foreach ($errors->all() as $error)
                                {{ $error }}
                            @endforeach
                              </p>
                              </div>
                            </div>
                          </div>
                     @endif
                
                  <div style="margin-top:70px;"class="col-md-12 panel">
                  <div  class="col-md-12 panel-heading">
                      <h4>Importar Datos</h4>
                    </div>
                    <div class="col-md-6">
                    <form action="/trabajadores/import" method="post" enctype="multipart/form-data">
                        @csrf
                            <div class="form-group form-animate-text" style="margin-top:40px !important;">
                              <input type="file" class="form-text"  name="file"  >
                              <input style="float:right;margin-top: 10px;margin-bottom: 10px;" class="submit btn btn-danger" type="submit" value="Importar">
                              </div>

                              
                          </form>
                    </div>
                    
                    
                    <div style="margin-top: 35px"  class="col-md-12 panel-heading">
                      <h4>Datos personales</h4>
                    </div>
                    <div class="col-md-12 panel-body" style="padding-bottom:30px;">
                      <div class="col-md-12">
                      <form  action="{{ route('trabajador.store')}}" method='post' class="form-horizontal">
                            @csrf
                          <div class="col-md-6">
                            <div class="form-group form-animate-text" style="margin-top:40px !important;">
                              <input type="text" class="form-text" id="validate_firstname" name="nombre" required>
                              <span class="bar"></span>
                              <label>Nombre</label>
                            </div>

                            <div class="form-group form-animate-text" style="margin-top:40px !important;">
                              <input type="text" class="form-text" id="validate_lastname" name="direccion" required>
                              <span class="bar"></span>
                              <label>Direccion</label>
                            </div>

                            <div class="form-group form-animate-text" style="margin-top:40px !important;">
                              <input type="text" class="form-text" id="validate_username" name="centro_trabajo" required>
                              <span class="bar"></span>
                              <label>Centro de Trabajo</label>
                            </div>

                            <div class="form-group form-animate-text" style="margin-top:40px !important;">
                              <input type="text" class="form-text" id="validate_username" name="cargo" required>
                              <span class="bar"></span>
                              <label>Cargo</label>
                            </div>
                          </div>

                          <div style="margin-left:15px "class="col-md-5">
                          <div class="form-group form-animate-text" style="margin-top:40px !important;">
                        <input type="text" class="form-text mask-phone"  name="telefono" required>
                        <span class="bar"></span>
                        <label>Telefono</label>
                      </div>

                      <div class="form-group form-animate-text" style="margin-top:40px !important;">
                        <input id="campo" type="text" class="form-text " name="ci" required>
                        <span class="bar"></span>
                        <label>#Carnet de Identidad</label>
                      </div>

                      <div class="form-group form-animate-text" style="margin-top:40px !important;">
                              <input type="text" class="form-text" id="validate_email" name="email" required>
                              <span class="bar"></span>
                              <label>Email</label>
                              <em style="color: red;" id="validate_email-error" class="error">Por favor entre una direccion de correo valida</em>
                            </div>
                          </div>                     
                          <div class="col-md-12">
                              
                              <input  id="genqr" style="float:right" class="submit btn btn-danger" type="submit" value="Aceptar">
                        </div>
                      </form>

                    </div>
                  </div>
                </div>
              </div>
              
              </div>
              </div>
              </div>
            

            @endsection