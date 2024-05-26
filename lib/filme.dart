class Filme {
  String nome;
  String diretor;
  int ano;
  String sinopse;
  String poster;
  bool assistido;
  int avaliacao;

  Filme({
    required this.nome,
    required this.diretor,
    required this.ano,
    required this.sinopse,
    required this.poster,
    this.assistido = false,
    this.avaliacao = 0,
  });
}
