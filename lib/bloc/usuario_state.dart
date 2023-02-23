part of 'usuario_bloc.dart';

@immutable
abstract class UsuarioState {
  final bool existUser;
  final Usuario? usuario;

  const UsuarioState({
    this.existUser = false,
    this.usuario,
  });
}

class UsuarioInitialState extends UsuarioState {
  const UsuarioInitialState() : super(existUser: false, usuario: null);
}

class UsuarioSetState extends UsuarioState {
  final Usuario newUsuario;
  const UsuarioSetState(this.newUsuario)
      : super(existUser: true, usuario: newUsuario);
}


