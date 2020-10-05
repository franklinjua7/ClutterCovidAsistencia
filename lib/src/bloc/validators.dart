import 'dart:async';

mixin Validators{

  final validarUsuario = StreamTransformer<String,String>.fromHandlers(
    handleData: (usuario,sink){
      if( usuario.length == 8 ){
        sink.add(usuario);
      } else {
        sink.addError("El Usuario debe de ser 8 caracteres.");
      }
    }
  );
  
  final validarClave = StreamTransformer<String,String>.fromHandlers(
    handleData: (clave,sink){
      if( clave.length == 8 ){
        sink.add(clave);
      } else {
        sink.addError("La clave debe de tener 8 caracteres.");
      }
    }
  );
}