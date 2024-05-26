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
      home: Scaffold(
        body: const HomePage(),
      ),
      initialRoute: '/',
      routes: {
        '/detalhes': (context) => const DetalhesFilmePage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Filme> filmes = [
      Filme(
        nome: "Taylor Swift: The Eras Tour",
        diretor: "Sam Wrench",
        ano: 2023,
        sinopse:
            "Taylor Swift: The Eras Tour is the recording of shows from The Eras Tour, performed by the global phenomenon Taylor Swift. The singer released her first album in 2006, while still associated with the Big Machine Records label. The film documents three of Swift's performances at SoFi Stadium during the 2023/2024 world tour - her sixth overall. Directed by Sam Wrench and produced by the singer herself, the film set a record of 37 million in its first day of pre-sales in the United States. The show lasts more than three hours and features a setlist of 44 songs.",
        poster: "https://github.com/naluisaelias/naluBoxd/blob/ac0c7a362ba59ccc42646dce489a02f53339443e/Posters/TaylorSwift_TheErasTour.png",
        assistido: false,
        avaliacao: 0,
      ),
      Filme(
          nome: "Priscilla",
          diretor: "Sofia Coppola",
          ano: 2020,
          sinopse:
              "Priscilla é um filme biográfico dirigido por Sofia Coppola que conta a história do relacionamento de um dos casais mais famosos do mundo: Elvis e Priscilla Presley. Baseado no livro Elvis e Eu, escrito por Priscilla, e protagonizado por Cailee Spaeny e Jacob Elordi, o filme segue o ponto de vista de Priscilla após conhecer o astro do rock em uma festa, quando ela ainda era apenas uma adolescente. Mas a paixão que, inicialmente, era formada por parceria e vulnerabilidade logo toma um rumo conturbado quando o cantor começa a mostrar um lado diferente daquele venerado nos palcos.",
          poster: "...",
          assistido: false,
          avaliacao: 0),
      Filme(
          nome: "Barbie",
          diretor: "Greta Gerwig",
          ano: 2023,
          sinopse:
              "No fabuloso live-action da boneca mais famosa do mundo, acompanhamos o dia a dia em Barbieland - o mundo mágico das Barbies, onde todas as versões da boneca vivem em completa harmonia e suas únicas preocupações são encontrar as melhores roupas para passear com as amigas e curtir intermináveis festas. Porém, uma das bonecas começa a perceber que talvez sua vida não seja tão perfeita assim, questionando-se sobre o sentido de sua existência e alarmando suas companheiras. Logo, sua vida no mundo cor-de-rosa começa a mudar e, eventualmente, ela sai de Barbieland. Forçada a viver no mundo real, Barbie precisa lutar com as dificuldades de não ser mais apenas uma boneca - pelo menos ela está acompanhada de seu fiel e amado Ken, que parece cada vez mais fascinado pela vida no novo mundo. Enquanto isso, Barbie tem dificuldades para se ajustar, e precisa enfrentar vários momentos nada coloridos até descobrir que a verdadeira beleza está no interior de ca a um.",
          poster: "https://via.placeholder.com/150",
          assistido: false,
          avaliacao: 0),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF653635),
        toolbarHeight: 45,
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
                color: Color(0xFFF9F1F0),
                fontWeight: FontWeight.bold,
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

  const FilmesList({Key? key, required this.filmes}) : super(key: key);

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
            separatorBuilder: (BuildContext context, int index) => Divider(
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
                        image: NetworkImage(widget.filmes[index].poster),
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
                                color: Color(0xFF653635),
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
                trailing: IconButton(
                  icon: widget.filmes[index].assistido
                      ? const Icon(Icons.check_circle_rounded,
                          color: Color(0xFFDEB3AD))
                      : const Icon(Icons.check_circle_outline_rounded,
                          color: Color(0xFFDEB3AD)),
                  onPressed: () {
                    setState(() {
                      widget.filmes[index].assistido =
                          !widget.filmes[index].assistido;
                      if (widget.filmes[index].assistido) {
                        contAssistidos++;
                        widget.filmes.add(widget.filmes.removeAt(index));
                      } else {
                        contAssistidos--;
                        widget.filmes.insert(0, widget.filmes.removeAt(index));
                      }
                    });
                  },
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Total de filmes assistidos: $contAssistidos',
            style: TextStyle(
              fontSize: 16.0,
              color: Color(0xFFDEB3AD),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
