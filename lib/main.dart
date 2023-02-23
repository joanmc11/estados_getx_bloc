
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/usuario_bloc.dart';
import 'pages/page_1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => UsuarioBloc(),
        )
      ],
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'pageApp',
        routes: {
          'pageApp': (_) => const PageApp(),
        },
      ),
    );
  }
}


