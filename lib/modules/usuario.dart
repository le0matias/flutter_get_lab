class Usuario {
  late String? nome;
  late int? idade;
  late List<String> profissoes;

  Usuario({
    this.nome,
    this.idade,
    this.profissoes = const [],
  });
}
