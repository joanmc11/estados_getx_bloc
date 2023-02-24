// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:estados_prueba/bloc/usuario_bloc.dart';
import 'package:estados_prueba/main.dart';
import 'package:estados_prueba/pages/page_1.dart';
import 'package:estados_prueba/widgets/change_usuario_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';



void main() {
  testWidgets('User widgets test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
    final changeInfo = find.byKey(const Key('changeUserInfo'));
    final infoUser = find.byKey(const Key('infoUser'));
    final noUser = find.byKey(const Key('noUserText'));

    // Verificar que empieza sin usuarios
    expect(changeInfo, findsOneWidget);
    expect(infoUser, findsNothing);
    expect(noUser, findsOneWidget);

      //Presionar 'Establecer usuario' y crear user
     await tester.pumpWidget( const ChangeUserInfo());
     //await tester.
     
    //await tester.pump(const Duration(milliseconds: 1000));
    await tester.tap(find.byKey(const Key('createUser')));
     //Verificar que se crea el usuario
      expect(infoUser, findsOneWidget);
      expect(noUser, findsNothing);
  });
}
