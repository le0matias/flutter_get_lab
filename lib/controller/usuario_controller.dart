import 'package:get/get.dart';

import '../modules/usuario.dart';

class UsuarioController extends GetxController {
  RxBool existeUsuario = false.obs;
  Rx<Usuario> usuario = Usuario().obs;
  int get profissoesCount {
    return usuario.value.profissoes.length;
  }

  void gravarUsuario(Usuario usuarioCriado) {
    existeUsuario.value = true;
    usuario.value = usuarioCriado;
  }

  void mudarIdade(int idade) {
    usuario.update((val) {
      val?.idade = idade;
    });
  }

  void adicionarProfissao(String profissao) {
    usuario.update((val) {
      val?.profissoes = [...val.profissoes, profissao];
    });
  }
}
