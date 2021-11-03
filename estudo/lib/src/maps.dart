import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

// ignore: non_constant_identifier_names
CadastrarPessoa() {
  bool condicao = true;

  while (condicao) {
    print(
        "Digite um comando \n - imprmir \n - cadastro\n - sair \n - limpar \nComando: ");

    String comando = stdin.readLineSync()!;
    if (comando == "sair") {
      print("== Saindo do programa ==");
      condicao = false;
    } else if (comando == "cadastro") {
      cadastrar();
    } else if (comando == "imprimir") {
      imprimir();
    } else if (comando == "limpar") {
      print("\x1B[2J\x1B[0;0H");
    } else {
      print("=== Esse comando não existe ===");
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};

  print("Digite seu nome: ");
  cadastro["nome"] = stdin.readLineSync();

  print("Digite sua idade: ");
  cadastro["idade"] = stdin.readLineSync();

  print("Digite sua cidade: ");
  cadastro["cidade"] = stdin.readLineSync();

  print("Digite seu estado: ");
  cadastro["estado"] = stdin.readLineSync();

  cadastros.add(cadastro);
}

imprimir() {
  for (int i = 0; i < cadastros.length; i++) {
    print("Nome: " + cadastros[i]["nome"]);
    print("Idade: " + cadastros[i]["idade"]);
    print("Cidade: " + cadastros[i]["cidade"]);
    print("Estado: " + cadastros[i]["estado"]);
  }
}
