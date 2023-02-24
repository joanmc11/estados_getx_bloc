import 'package:estados_prueba/pages/page_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget widget, StateStreamableSource<Object?> bloc) {
    return pumpWidget(
      MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => bloc,
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: widget,
      ),
    ),
    );
  }
}