import '../models/location.dart';

class InMemmoryDatabase {
  List<Location> database = [];
  InMemmoryDatabase() {
    var location = Location(
        'Oeschinen Lake Campground',
        'Kandersteg, Switzerland',
        'O Lago Oeschinen fica aos pés do Blüemlisalp nos Alpes Berneses. Situado a 1.578 metros acima do nível do mar, é um dos lagos alpinos mais amplos. Um passeio de teleférico a partir de Kandersteg, seguido por meia hora de caminhada por pastagens e floresta de pinheiros, leva você ao lago, que aquece até 20 graus Celsius no verão. As atividades desfrutadas aqui incluem remo e andar no tobogã de verão.',
        'images/lake.jpg');
    database.add(location);
    var location2 = Location(
        'Machu Picchu',
        'Peru',
        'Um antigo refúgio inca nas montanhas dos Andes, cercado por mistério e história.',
        'images/machupicchu.jpg');
    database.add(location2);
    var location3 = Location(
        'Santorini',
        'Grécia',
        'Uma ilha deslumbrante com casas caiadas de branco e vistas de tirar o fôlego do mar Egeu.',
        'images/santorini.jpg');
    database.add(location3);
    var location4 = Location(
        'Kyoto',
        'Japão',
        'Uma cidade no Japão conhecida por seus templos antigos, jardins de bambu e tradições culturais.',
        'images/kyoto.jpg');
    database.add(location4);
    var location5 = Location(
        'Ilha de Páscoa',
        'Chile',
        'Famosa por suas estátuas de pedra gigantes, chamadas Moai, e seu cenário natural único.',
        'images/ilhadepascoa.jpeg');
    database.add(location5);
    var location6 = Location(
        'Florença',
        'Itália',
        'Um tesouro renascentista com obras de arte icônicas, arquitetura deslumbrante e delícias culinárias.',
        'images/florenca.jpg');
    database.add(location6);
  }
}
