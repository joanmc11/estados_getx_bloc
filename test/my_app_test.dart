import 'package:estados_prueba/main.dart';
import 'package:estados_prueba/pages/page_1.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', (){
    testWidgets('render first route', (WidgetTester tester)async{
      await tester.pumpWidget(const MyApp());
      expect(find.byType(PageApp), findsOneWidget);
    });
  });
  
}