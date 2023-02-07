import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controller/usuario_controller.dart';

import '../modules/usuario.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioController = Get.put(UsuarioController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 1'),
      ),
      body: Obx(
        () => usuarioController.existeUsuario.value ? UsuarioDefinido(usuario: usuarioController.usuario.value) : const SemUsuario(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'pagina2'),
      ),
    );
  }
}

class UsuarioDefinido extends StatelessWidget {
  final Usuario? usuario;

  const UsuarioDefinido({
    super.key,
    this.usuario,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Dados Pessoais', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          ListTile(
            title: Text('Nome: ${usuario?.nome}'),
          ),
          ListTile(
            title: Text('idade: ${usuario?.idade}'),
          ),
          const Text(
            'Profissoes',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ...usuario!.profissoes.map((profissoes) => ListTile(
                title: Text(profissoes),
              ))
          // const ListTile(
          //   title: Text('Profissao 1'),
          // ),
          // const ListTile(
          //   title: Text('Profissao 2'),
          // ),
          // const ListTile(
          //   title: Text('Profissao 3'),
          // ),
        ],
      ),
    );
  }
}

class SemUsuario extends StatelessWidget {
  const SemUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Usuario nao definido'),
    );
  }
}
