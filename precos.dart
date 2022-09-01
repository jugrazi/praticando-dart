import 'dart:io';
void main(List<String> args) {
  String? preco;
  double novo_preco;

  print("Insira o preço do produto: ");
  preco = stdin.readLineSync();

  if(preco != null){
    var preco_double = double.parse(preco);

    if(preco_double <= 50){
      novo_preco = preco_double + (preco_double*5/100);
    }else if(preco_double <= 120){
      novo_preco = preco_double + (preco_double*10/100);
    }else{
      novo_preco = preco_double + (preco_double*15/100);
    }

    print("Novo preço será: ${novo_preco}");

    if(novo_preco <= 80){
      print("Está Barato!");
    }else if(novo_preco <= 120){
      print("Está Normal!");
    }else if(novo_preco <= 200){
      print("Está Caro!");
    }else {
      print("Está Muito Caro!");
    }
  }

}