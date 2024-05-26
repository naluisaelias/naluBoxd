import 'package:flutter/material.dart';
import 'filme.dart';
import 'detalhes_filme.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'naluBoxd',
      home: const Scaffold(
        body: HomePage(),
      ),
      initialRoute: '/',
      routes: {
        '/detalhes': (context) => const DetalhesFilmePage(),
      },
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Filme> filmes = [
      Filme(
        nome: "Taylor Swift: The Eras Tour",
        diretor: "Sam Wrench",
        ano: 2023,
        sinopse:
            "Taylor Swift: The Eras Tour é a gravação dos shows da The Eras Tour, performada pelo fenômeno mundial Taylor Swift. A cantora lançou seu primeiro álbum em 2006, enquanto ainda estava associada à gravadora Big Machine Records. O filme documenta três apresentações de Swift no SoFi Stadium, durante a turnê mundial de 2023/2024 - sexta na carreira de Taylor. Com direção de Sam Wrench e produção da própria cantora, o longa bateu o recorde de 37 milhões de dólares em seu primeiro dia de pré-vendas nos Estados Unidos. O show possui mais de três horas de duração, e conta com um setlist formado por 44 músicas.",
        poster: "assets/images/TaylorSwift_TheErasTour.png",
        assistido: false,
        avaliacao: 0,
      ),
      Filme(
        nome: "Priscilla",
        diretor: "Sofia Coppola",
        ano: 2020,
        sinopse:
            "Priscilla é um filme biográfico dirigido por Sofia Coppola que conta a história do relacionamento de um dos casais mais famosos do mundo: Elvis e Priscilla Presley. Baseado no livro Elvis e Eu, escrito por Priscilla, e protagonizado por Cailee Spaeny e Jacob Elordi, o filme segue o ponto de vista de Priscilla após conhecer o astro do rock em uma festa, quando ela ainda era apenas uma adolescente. Mas a paixão que, inicialmente, era formada por parceria e vulnerabilidade logo toma um rumo conturbado quando o cantor começa a mostrar um lado diferente daquele venerado nos palcos.",
        poster: "assets/images/Priscilla.jpg",
        assistido: false,
        avaliacao: 0,
      ),
      Filme(
        nome: "Barbie",
        diretor: "Greta Gerwig",
        ano: 2023,
        sinopse:
            "No fabuloso live-action da boneca mais famosa do mundo, acompanhamos o dia a dia em Barbieland - o mundo mágico das Barbies, onde todas as versões da boneca vivem em completa harmonia e suas únicas preocupações são encontrar as melhores roupas para passear com as amigas e curtir intermináveis festas. Porém, uma das bonecas começa a perceber que talvez sua vida não seja tão perfeita assim, questionando-se sobre o sentido de sua existência e alarmando suas companheiras. Logo, sua vida no mundo cor-de-rosa começa a mudar e, eventualmente, ela sai de Barbieland. Forçada a viver no mundo real, Barbie precisa lutar com as dificuldades de não ser mais apenas uma boneca - pelo menos ela está acompanhada de seu fiel e amado Ken, que parece cada vez mais fascinado pela vida no novo mundo. Enquanto isso, Barbie tem dificuldades para se ajustar, e precisa enfrentar vários momentos nada coloridos até descobrir que a verdadeira beleza está no interior de cada um.",
        poster: "assets/images/Barbie.jpg",
        assistido: false,
        avaliacao: 0,
      ),
      Filme(
          nome: "Miss Americana",
          diretor: "Lana Wilson",
          ano: 2020,
          sinopse:
              "Em Taylor Swift: Miss Americana, a cantora relata detalhes pessoais e de como é ter apenas 30 anos e ser a artista feminina mais premiada da história do AMAs e ter 10 Grammys. Após passar por controvérsias na carreira e vida pessoal, ela resolveu assumir seu papel como intérprete, compositora e uma mulher influente.",
          poster: "assets/images/MissAmericana.jpg",
          assistido: false,
          avaliacao: 0),
      Filme(
          nome: "Adoráveis Mulheres",
          diretor: "Greta Gerwig",
          ano: 2020,
          sinopse:
              "As irmãs Jo, Beth, Meg e Amy amadurecem na virada da adolescência para a vida adulta enquanto os Estados Unidos atravessam a Guerra Civil. Com personalidades completamente diferentes, elas enfrentam os desafios de crescer unidas pelo amor que nutrem umas pelas outras.",
          poster: "assets/images/AdoraveisMulheres.jpg",
          assistido: false,
          avaliacao: 0),
      Filme(
          nome: "Antes do Amanhecer",
          diretor: "Richard Linklater",
          ano: 1995,
          sinopse:
              "Jesse, um jovem americano, e Celine, uma linda francesa, se conhecem no trem para Paris, e começam uma conversa que os leva a fazer uma escala em Viena e ficar um pouco mais juntos, sem imaginar o que o destino os reserva.",
          poster: "assets/images/AntesDoAmanhecer.jpg",
          assistido: false,
          avaliacao: 0),
      Filme(
          nome: "Garota Exemplar",
          diretor: "David Fincher",
          ano: 2014,
          sinopse:
              "No dia de seu quinto aniversário de casamento, Amy desaparece. Quando as aparências de uma união feliz começam a desmoronar, Nick, seu marido, torna-se o principal suspeito. Com a ajuda de sua irmã gêmea, ele tenta provar sua inocência, ao mesmo tempo em que investiga o que realmente aconteceu com a mulher.",
          poster: "assets/images/GarotaExemplar.jpg",
          assistido: false,
          avaliacao: 0),
      Filme(
          nome: "Lady Bird - A Hora de Voar",
          diretor: "Greta Gerwig",
          ano: 2018,
          sinopse:
              "Em Lady Bird - A Hora de Voar, Christine McPherson está no último ano do ensino médio e o que mais deseja é ir fazer faculdade longe de Sacramento, Califórnia, ideia firmemente rejeitada por sua mãe. Lady Bird, como a garota de forte personalidade exige ser chamada, não se dá por vencida e leva o plano de ir embora adiante mesmo assim. Enquanto sua hora não chega, no entanto, ela se divide entre as obrigações estudantis no colégio católico, o primeiro namoro, típicos rituais de passagem para a vida adulta e inúmeros desentendimentos com a progenitora.",
          poster: "assets/images/LadyBird_A_HoraDeVoar.jpg",
          assistido: false,
          avaliacao: 0),
      Filme(
          nome: "O Estranho que Nós Amamos",
          diretor: "Sofia Coppola",
          ano: 2017,
          sinopse:
              "Virginia, 1864, três anos após o início da Guerra Civil. John McBurney é um cabo da União que, ferido em combate, é encontrado em um bosque pela jovem Amy. Ela o leva para a casa onde mora, um internato de mulheres gerenciado por Martha Farnsworth. Lá, elas decidem cuidá-lo para que, após se recuperar, seja entregue às autoridades. Só que, aos poucos, cada uma delas demonstra interesses e desejos pelo homem da casa, especialmente Edwina e Alicia.",
          poster: "assets/images/OEstranhoQueNosAmamos.jpg",
          assistido: false,
          avaliacao: 0),
      Filme(
          nome: "Frances Ha",
          diretor: "Noah Baumbach",
          ano: 2013,
          sinopse:
              "Frances divide um apartamento em Nova York com Sophie, sua melhor amiga. Brincalhona e com ar de quem não deseja crescer, ela recusa o convite do namorado para que more com ele justamente para não deixar Sophie sozinha. Entretanto, a amiga não toma a mesma atitude quando surge a oportunidade de se mudar para um apartamento melhor localizado, mesmo que isto signifique que ela e Frances passem a morar em locais diferentes. A partir de então tem início a peregrinação de Frances em busca de um novo lugar que se adeque às suas finanças, já que ela é apenas aluna em uma companhia de dança à espera de uma chance de integrar o grupo de bailarinos que encenará o espetáculo de Natal. Mesmo diante das dificuldades, Frances tenta manter o alto astral diante os problemas que a vida adulta traz.",
          poster: "assets/images/FrancesHa.jpg",
          assistido: false,
          avaliacao: 0),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF653635),
        toolbarHeight: 65,
        title: const Row(
          children: [
            Icon(
              Icons.circle,
              color: Color(0xFFF9F1F0),
              size: 16,
            ),
            SizedBox(width: 4),
            Icon(
              Icons.circle,
              color: Color(0xFFDB959B),
              size: 16,
            ),
            SizedBox(width: 4),
            Icon(
              Icons.circle,
              color: Color(0xFFF9F1F0),
              size: 16,
            ),
            SizedBox(width: 8),
            Text(
              'naluBoxd',
              style: TextStyle(
                fontFamily: 'LemonMilk',
                color: Color(0xFFF9F1F0),
              ),
            ),
          ],
        ),
      ),
      body: FilmesList(filmes: filmes),
    );
  }
}

class FilmesList extends StatefulWidget {
  final List<Filme> filmes;

  const FilmesList({super.key, required this.filmes});

  @override
  _FilmesListState createState() => _FilmesListState();
}

class _FilmesListState extends State<FilmesList> {
  int contAssistidos = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: widget.filmes.length,
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
              color: Color(0xFFDEB3AD),
            ),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                leading: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/detalhes',
                      arguments: widget.filmes[index],
                    );
                  },
                  child: Container(
                    width: 50,
                    height: 75,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.filmes[index].poster),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                title: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/detalhes',
                      arguments: widget.filmes[index],
                    );
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.filmes[index].nome,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      if (widget.filmes[index].assistido)
                        Row(
                          children: List.generate(5, (starIndex) {
                            return IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              icon: Icon(
                                widget.filmes[index].avaliacao > starIndex
                                    ? Icons.star
                                    : Icons.star_border,
                                size: 22.0,
                                color: const Color(0xFF653635),
                              ),
                              onPressed: () {
                                setState(() {
                                  widget.filmes[index].avaliacao =
                                      starIndex + 1;
                                });
                              },
                            );
                          }),
                        ),
                    ],
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.filmes[index].diretor,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      '${widget.filmes[index].ano}',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Expanded(
                      child: IconButton(
                        icon: Icon(
                          widget.filmes[index].assistido
                              ? Icons.check_circle_rounded
                              : Icons.check_circle_outline_rounded,
                          color: Color(0xFFDEB3AD),
                        ),
                        onPressed: () {
                          setState(() {
                            widget.filmes[index].assistido =
                                !widget.filmes[index].assistido;
                            contAssistidos +=
                                widget.filmes[index].assistido ? 1 : -1;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Você assistiu $contAssistidos de ${widget.filmes.length} filmes.',
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFFDEB3AD),
            ),
          ),
        ),
      ],
    );
  }
}

