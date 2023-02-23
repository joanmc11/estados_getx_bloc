import 'package:get/get.dart';

import '../models/usuario.dart';

class UsuarioController extends GetxController {
  var existeUsuario = false.obs;
  var usuario = Usuario().obs;

  int get profesioneCount {
    return usuario.value.profesiones.length;
  }

  void cargarUsuario(Usuario pUsuario) {
    existeUsuario.value = true;
    usuario.value = pUsuario;
  }

  void borrarUsuario() {
    existeUsuario.value = false;
    usuario.value = Usuario();
  }

  void sumarEdad(int numberToOperate) {
    usuario.update((val) {
      if (existeUsuario.value) {
        val!.edad = val.edad! + numberToOperate;
        Get.defaultDialog(
            title: 'Suma de edad', middleText: 'La edad ahora es ${val.edad}');
      }
    });
  }

  void restarEdad(int numberToOperate) {
    usuario.update((val) {
      if (existeUsuario.value) {
        int newEdad = val!.edad! - numberToOperate;
        if (newEdad < 0) {
          val.edad = newEdad;
        }
        Get.defaultDialog(
            title: 'Resta de edad', middleText: 'La edad ahora es ${val.edad}');
      }
    });
  }

  void agregarProfeson(String profesion) {
    usuario.update((val) {
      val!.profesiones = [...val.profesiones, profesion];
    });
  }
}
