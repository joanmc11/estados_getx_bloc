part of 'usuario_bloc.dart';

@immutable
abstract class UsuarioEvent {}

class ActivateUsuario extends UsuarioEvent {
  final Usuario usuario;
  ActivateUsuario(this.usuario);
}

abstract class ChangeUsuarioAge extends UsuarioEvent{
//Si quisieramos sumar/restar... de dos en dos, tres, cuatro... pasariamos el numero a esta clase
final int numberToOperate;
ChangeUsuarioAge(this.numberToOperate);
}

class AddUpAge extends ChangeUsuarioAge{
  AddUpAge(super.numberToOperate);

}
class SubstractAge extends ChangeUsuarioAge{
  SubstractAge(super.numberToOperate);

}




class AddProfesion extends UsuarioEvent{
  final String profesion;
  AddProfesion(this.profesion);
}

class DeleteUsuario extends UsuarioEvent{
  

}
