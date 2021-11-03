import 'package:estudo/src/carrinho.dart';
import 'package:estudo/src/imc.dart';
import 'package:estudo/src/maps.dart';

main(List<String> arguments) {
  if (arguments[0] == "calcular-imc") {
    calcularIMC();
  } else if (arguments[0] == "carrinho-compras") {
    carrinhoCompras();
  } else if (arguments[0] == "cadastro") {
    CadastrarPessoa();
  } else {
    print("Esse programa não existe");
  }
}
