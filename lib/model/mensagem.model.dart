class MensagemModel {
  String imagemUrl;
  String nome;
  String ultimaMensagem;
  DateTime dataUltimaMensagem;
  int quantidadeNaoLida;

  MensagemModel(this.imagemUrl, this.nome, this.ultimaMensagem,
      this.dataUltimaMensagem, {this.quantidadeNaoLida=0});
}
