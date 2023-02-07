import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/modules/usuario.dart';

import '../controller/usuario_controller.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioController = Get.find<UsuarioController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                usuarioController.gravarUsuario(
                  Usuario(
                    nome: 'Leoncio',
                    idade: 50,
                  ),
                );
                Get.snackbar(
                  'Usuario gravado',
                  'Leoncio eh o nome do usuario',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.white,
                  boxShadows: [
                    const BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10,
                    )
                  ],
                );
              },
              child: const Text(
                'Definir Usuario',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                usuarioController.mudarIdade(45);
              },
              child: const Text(
                'Mudar Idade',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                usuarioController.adicionarProfissao('profissao #${usuarioController.usuario.value.profissoes.length + 1}');
              },
              child: const Text(
                'Adicionar Profissao',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
                );
              },
              child: const Text(
                'Mudar tema',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
