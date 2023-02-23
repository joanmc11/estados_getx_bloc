// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../models/usuario.dart';

class InformacionUsuario extends StatelessWidget {
  const InformacionUsuario({
    Key? key,
    required this.usuario,
    
  }) : super(key: key);

  final Usuario usuario;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height-350,
      //padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'General',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              ListTile(
                title: Text('Nombre: ${usuario.nombre}'),
              ),
              ListTile(
                title: Text('Edad: ${usuario.edad}'),
              ),
              const Text(
                'Profesiones',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: usuario.profesiones.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(usuario.profesiones[index]),
                    leading: const Icon(Icons.work_history),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
