import 'package:estados_prueba/widgets/change_usuario_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/usuario_bloc.dart';
import '../widgets/show_user_info.dart';

class PageApp extends StatelessWidget {
  const PageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc App'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<UsuarioBloc>(context, listen: false)
                  .add(DeleteUsuario());
            },
            icon: const Icon(Icons.delete_outline),
          )
        ],
      ),
      body: Column(
        children: [
          const ChangeUserInfo(),
          const Divider(),
          BlocBuilder<UsuarioBloc, UsuarioState>(
            builder: (_, state) {
              return state.existUser
                  ? InformacionUsuario(
                      usuario: state.usuario!,
                      controller: ScrollController(keepScrollOffset: true),
                    )
                  : const Center(
                      child: Text('No existe el usuario'),
                    );
            },
          ),
        ],
      ),
    );
  }
}
