import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/usuario_controller.dart';
import '../models/usuario.dart';

class ChangeUserInfo extends StatelessWidget {
  const ChangeUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    //print(Get.arguments);
    final usuarioController = Get.find<UsuarioController>();
    return SizedBox(
      height: 200,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                usuarioController.cargarUsuario(Usuario(
                    nombre: 'Joan',
                    edad: 26,
                    profesiones: [
                      'Domador de cabras',
                      'Escritor de etiquetas'
                    ]));
                Get.snackbar('Usuario establecido',
                    '${usuarioController.usuario.value.nombre} es el nombre del Usuario',
                    backgroundColor: Colors.white,
                    boxShadows: [
                      const BoxShadow(color: Colors.black38, blurRadius: 10)
                    ],
                    icon: const Icon(Icons.person));
              },
              color: Colors.blue,
              child: const Text(
                'Establecer Usuario',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    usuarioController.restarEdad(1);
                  },
                  color: Colors.blue,
                  child: const Text(
                    'Restar Edad',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Text('  -  '),
                MaterialButton(
                  onPressed: () {
                    usuarioController.sumarEdad(1);
                  },
                  color: Colors.blue,
                  child: const Text(
                    'Sumar Edad',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {
                usuarioController.agregarProfeson(
                    'Profesion ${usuarioController.profesioneCount + 1}');
              },
              color: Colors.blue,
              child: const Text(
                'Añadir Profesión',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              },
              color: Colors.blue,
              child: const Text(
                'Cambiar tema',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
