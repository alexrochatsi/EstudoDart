import 'dart:io';

//variavel global
List<String> produtos = [];
carrinhoCompras() {
  bool condicao = true;

  while (condicao) {
    print("========= ADICIONE UM PRODUTO ======");
    String text = stdin.readLineSync()!;
    if (text == "sair") {
      print(" ========= TERMINOU O PROGRAMA =========");
      condicao = false;
    } else if (text == "imprimir") {
      imprimir();
      print("\n");
      //sleep(const Duration(seconds: 5));
    } else {
      produtos.add(text);
      //produtos.removeAt(posicao)
      //limpa o terminal
      print("\x1B[2J\x1B[0;0H");
    }
  }
}

imprimir() {
  print(produtos);
  print("\n");
}
