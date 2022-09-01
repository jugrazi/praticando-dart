import 'dart:io';

void main(List<String> args) {
  int codigo_cidade;
  int num_veiculos;
  int num_acidentes;
  double indice_acidentes;
  double maior_indice =0 , menor_indice = 0;
  int cod_cidade_maior_indice = 0, cod_cidade_menor_indice = 0;
  double acumulador_veiculos = 0;
  double acum_novo = 0;
  int cont_novo = 0;

  for(var i = 0; i < 2; i++){
    print("Informe o código da cidade: ");
    codigo_cidade = int.parse(stdin.readLineSync()!);
    print("Informe o número de veiculos: ");
    num_veiculos = int.parse(stdin.readLineSync()!);
    print("Informe o número de acidentes: ");
    num_acidentes = int.parse(stdin.readLineSync()!);

    indice_acidentes = num_acidentes/num_veiculos;

    if(i == 0){
      maior_indice = indice_acidentes;
      menor_indice = indice_acidentes;
      cod_cidade_maior_indice = codigo_cidade;
      cod_cidade_menor_indice = codigo_cidade;
    }

    if(indice_acidentes > maior_indice){
      maior_indice = indice_acidentes;
      cod_cidade_maior_indice = codigo_cidade;
    }

    if(indice_acidentes < menor_indice){
      menor_indice = indice_acidentes;
      cod_cidade_menor_indice = codigo_cidade;
    }

    acumulador_veiculos += num_veiculos;

    if(num_veiculos < 2000){
      cont_novo++;
      acum_novo += num_acidentes;
    }
  }

  var media_veiculos = acumulador_veiculos/2;
  var media_acidentes = acum_novo/cont_novo;
  print("Cidade com menor Indice de Acidente: ${cod_cidade_menor_indice}");
  print("Cidade com maior Indice de Acidente: ${cod_cidade_maior_indice}");
  print("Média número de veículos: ${media_veiculos}");
  print("Média de acidentes: ${media_acidentes}");

}