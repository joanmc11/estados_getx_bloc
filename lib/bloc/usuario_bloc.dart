import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

import '../models/usuario.dart';

part 'usuario_event.dart';
part 'usuario_state.dart';

class UsuarioBloc extends Bloc<UsuarioEvent, UsuarioState> {
  UsuarioBloc() : super(const UsuarioInitialState()) {
    on<ActivateUsuario>((event, emit) => emit(UsuarioSetState(event.usuario)));

    on<DeleteUsuario>((event, emit) => emit(const UsuarioInitialState()));

    on<AddUpAge>(
      ((event, emit) {
        if (!state.existUser) return;
       final newAge = state.usuario!.edad + event.numberToOperate;
        emit(UsuarioSetState(state.usuario!.copyWith(edad: newAge)));
      }),
    );
    on<SubstractAge>(
      ((event, emit) {
        if (!state.existUser) return;
       int newAge = state.usuario!.edad - event.numberToOperate;
       if(newAge<0){
        newAge = 0;
       }
        emit(UsuarioSetState(state.usuario!.copyWith(edad: newAge)));
      }),
    );

    on<AddProfesion>(
      ((event, emit) {
        if (!state.existUser) return;

        final newProfesiones = [...state.usuario!.profesiones, event.profesion];
        

        emit(UsuarioSetState(
            state.usuario!.copyWith(profesiones: newProfesiones)));
      }),
    );
  }
}
