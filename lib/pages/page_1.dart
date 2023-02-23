import 'package:estados_prueba/widgets/change_usuario_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/usuario_controller.dart';
import '../widgets/show_user_info.dart';

class PageApp extends StatelessWidget {
  const PageApp({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioCtrl = Get.put(UsuarioController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX App'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              usuarioCtrl.borrarUsuario();
            },
            icon: const Icon(Icons.delete_outline),
          )
        ],
      ),
      body: Column(
        children: [
          const ChangeUserInfo(),
          const Divider(),
          Obx(
            () => usuarioCtrl.existeUsuario.value
                ? InformacionUsuario(
                    usuario: usuarioCtrl.usuario.value,
                  )
                : const Center(
                    child: Text('No existe el usuario'),
                  ),
          ),
        ],
      ),
    );
  }
}
