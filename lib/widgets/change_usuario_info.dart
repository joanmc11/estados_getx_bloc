import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/usuario_bloc.dart';
import '../models/usuario.dart';

class ChangeUserInfo extends StatelessWidget {
  const ChangeUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UsuarioBloc>(context, listen: false);
    return SizedBox(
      height: 150,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              key: const Key('createUser'),
              onPressed: () {
                final usuario = Usuario(
                  nombre: 'Joan',
                  edad: 26,
                  profesiones: [
                    'Domador de cabras',
                    'Silvador gomero',
                    'Escritor de etiquetas'
                  ],
                );
                userBloc.add(ActivateUsuario(usuario));
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
                //Restar edad
                MaterialButton(
                  onPressed: () {
                    userBloc.add(SubstractAge(1));
                  },
                  color: Colors.blue,
                  child: const Text(
                    'Restar Edad',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Text('  -  '),
                //Sumar edad
                MaterialButton(
                  onPressed: () {
                    userBloc.add(AddUpAge(1));
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
                userBloc.add(AddProfesion('Nueva Profesion'));
              },
              color: Colors.blue,
              child: const Text(
                'Añadir Profesión',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
