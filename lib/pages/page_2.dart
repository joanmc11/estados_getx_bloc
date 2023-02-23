import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina secundaria'),
      ),
      body: Center(child: ElevatedButton(
        onPressed: () => Get.back(),
        child: const Text('Volver'),)),
        
        
      
    );
  }
}
