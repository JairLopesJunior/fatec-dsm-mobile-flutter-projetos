import 'dart:io';

// Aceita omitir o tipo de retorno
minhaFuncao() {
  return 7 * 6;
}

// O DART tem parametros por posição
minhaFuncao2(int x, int y) {
  return x * y;
}

// O DART tem parametros opcionais
// O x é obrigatorio
// O y é opcional
minhaFuncao3(int x, [int y = 6]) {
  return x * y;
}

void main(List<String> arguments) {
  int year = 2016;
  String bestStarWarsMovie = 'Rogue One - A Star Wars History';
  double tomatoesRating = 0.84;

  print('''
      Meu filme preferido de Star Wars é $bestStarWarsMovie, 
      ele foi lançado em $year e o índice de aprovação é de $tomatoesRating.
    ''');

  jumpLine();

  print('Voçes perceberam que o \u{1F3AF} é ótimo com Strings!');

  //TODO: Tipos de dados por inferencia

  var language = 'Dart';
  var version = Platform.version;
  num androidSdk = 30.1;
  num flutterVersion = 3;
  bool isMacOS = Platform.isMacOS;

  jumpLine();

  print('language: ${language.runtimeType}');
  print('version: ${version.runtimeType}');
  print('androidSdk: ${androidSdk.runtimeType}');
  print('flutterVersion: ${flutterVersion.runtimeType}');
  print('isMacOs: ${isMacOS.runtimeType}');

  dynamic x = 10;

  //TODO: Atribuir valores difersificados á x e exibir o valor do runtimeType
  x = 10.4567;
  print('x agora é: ${x.runtimeType}');

  x = '10.4567';
  print('x agora é: ${x.runtimeType}');

  x = false;
  print('x agora é: ${x.runtimeType}');

  x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  print('x agora é: ${x.runtimeType}');

  x = {"lang": language, "version": version};
  print('x agora é: ${x.runtimeType}');

  x = <int>{4, 5, 6, 7, 8};
  print('x agora é: ${x.runtimeType}');

  x = <dynamic>{4, 5, 6, 7, '8'};
  print('x agora é: ${x.runtimeType}');

  x = {4, 5, 6, 7, '8'};
  print('x agora é: ${x.runtimeType}');
  jumpLine();

  print('10 é par: ${10.isEven}');

  // Tudo é objeto em Dart
  print('10 é par: ${10.isEven ? 'Sim' : 'Não'}');
  print(language.toUpperCase().replaceFirst('DART', 'D.A.R.T'));
  print(10.123456789.toStringAsFixed(2));
  jumpLine();

  // TODO: const e final

  //const horaAtual = DateTime.now(); // Consegue um valor em tempo de compilação (IMUTAVEL)
  final horaAtual =
      DateTime.now(); // Consegue o valor em tempo de execução (IMUTAVEL)
  print('const horaAtual: $horaAtual');
  jumpLine();

  //TODO: Coleções
  var nomes = <String>['Jair', 'Paulo', 'Paula', 'Marius'];
  List<String> listaNomes = ['Jair', 'Paulo', 'Paula', 'Marius'];
  print('nomes: ${nomes.runtimeType}');
  print('listaNomes: ${listaNomes.runtimeType}');
  print(listaNomes[0]);
  jumpLine();

  //TODO: Percorrer uma lista
  listaNomes.forEach(print);
  jumpLine();

  for (var element in listaNomes) {
    print(element);
  }
  jumpLine();

  for (int i = 0; i < listaNomes.length; i++) {
    print(listaNomes[i]);
  }
  jumpLine();

  var episodiosStarWars = {
    'Episodio I': 'A ameaça Fantasma.',
    'Episodio II': 'O Ataque dos Clones.',
    'Episodio III': 'A Vingança dos SIth.'
  };

  episodiosStarWars.forEach((key, value) => print('Ep: $key - Desc: $value'));
  jumpLine();

  var episodiosRaiz = {
    'Episodio IV - Uma Nova esperança.',
    'Episodio V - O Império Contra-ataca.',
    'Episodio VI - O REtorno de Jedi.'
  };

  print(episodiosRaiz);
  listaNomes.add('Antonio');
  listaNomes.add('Antonio');
  episodiosRaiz.add('Rogue One');
  episodiosRaiz.add('Rogue One');
  print(listaNomes);
  print(episodiosRaiz);
  jumpLine();

  num rr = minhaFuncao3(7);
  print(rr);
  jumpLine();

  num r = minhaFuncao3(7, 3);
  print(r);
  jumpLine();

  var f = (int x) => x * 2;
  print(f(3));
}

jumpLine() {
  print('\n');
}
