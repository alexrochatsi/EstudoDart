import 'dart:io';

calcularIMC() {
  // para definir o tipo do array, utilizar List<tipo> variavel;
  var pesos = [];

  for (int i = 0; i < 3; i++) {
    print("INSIRA SEU PESO: ");
    int peso = int.parse(stdin.readLineSync()!);

    print("INSIRA SUA ALTURA: ");
    double altura = double.parse(stdin.readLineSync()!);

    imprimeResultado(calcIMC(peso, altura));

    pesos.add(peso);
  }

  print("Todos os pesos digitados foram: $pesos");

  for (int i = 0; i < pesos.length; i++) {
    print("Peso $i : " + pesos[i].toString());
  }

  print("Agora irei remover o peso 70");
  pesos.remove(70);

  print("Lista atualizada abaixo: ");

  for (int i = 0; i < pesos.length; i++) {
    print("Peso $i : " + pesos[i].toString());
  }
}

calcIMC(int peso, double altura) {
  return peso / (altura * altura);
}

imprimeResultado(double imc) {
  print("=============================");

  if (imc < 18.5) {
    print("Abaixo do peso! $imc");
  } else if (imc > 18.5 && imc < 24.9) {
    print("Peso normal $imc");
  } else if (imc > 25 && imc < 29.9) {
    print("Sobrepeso $imc");
  } else if (imc > 30 && imc < 34.9) {
    print("Obesidade Grau 1 $imc");
  } else if (imc > 35 && imc < 39.9) {
    print("Obesidade Grau 2 $imc");
  } else {
    print("Obesidade Grau 3 $imc");
  }
}
