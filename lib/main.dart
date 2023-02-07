import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/pages/pagina1.dart';
import 'package:my_app/pages/pagina2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: 'pagina1',
      routes: {
        'pagina1': (_) => const Pagina1(),
        'pagina2': (_) => const Pagina2(),
      },
    );
  }
}
