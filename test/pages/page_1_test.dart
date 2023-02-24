import 'package:bloc_test/bloc_test.dart';
import 'package:estados_prueba/bloc/usuario_bloc.dart';
import 'package:estados_prueba/main.dart';
import 'package:estados_prueba/models/usuario.dart';
import 'package:estados_prueba/pages/page_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../helpers/pump_app.dart';

class _MockUsuarioBloc extends MockBloc<UsuarioEvent, UsuarioState>
    implements UsuarioBloc {}

void main() {
  group('PageApp', () {
    late _MockUsuarioBloc mockUsuario;
    setUp(() {
      mockUsuario = _MockUsuarioBloc();
    });
    testWidgets('Initial widgets', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      final changeInfo = find.byKey(const Key('changeUserInfo'));
      final infoUser = find.byKey(const Key('infoUser'));
      final noUser = find.byKey(const Key('noUserText'));

      // Verificar que empieza sin usuarios
      expect(changeInfo, findsOneWidget);
      expect(infoUser, findsNothing);
      expect(noUser, findsOneWidget);
    });

   /* testWidgets('renders user', (WidgetTester tester) async {
      //await tester.pumpApp(const PageApp(), mockUsuario);
      final state = Usuario(nombre: '', edad: 0, profesiones: []);
     
      //Presionar crear usuario
      await tester.tap(find.byKey(const Key('createUser')));

      verify(() => mockUsuario.add(ActivateUsuario(Usuario(
            nombre: 'Joan',
            edad: 26,
            profesiones: [
              'Domador de cabras',
              'Silvador gomero',
              'Escritor de etiquetas'
            ],
          )))).called(Usuario(
            nombre: 'Joan',
            edad: 26,
            profesiones: [
              'Domador de cabras',
              'Silvador gomero',
              'Escritor de etiquetas'
            ],
          ));
    });*/
  });
}
