import 'package:flutter/material.dart';
import 'filme.dart';

class DetalhesFilmePage extends StatelessWidget {
  const DetalhesFilmePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final Filme filme = ModalRoute.of(context)!.settings.arguments as Filme;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              Text(
                filme.nome,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02), // Espaço proporcional
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Divider(
                  color: Color(0xFF653635),
                  thickness: 2,
                ),
              ),
              const SizedBox(height: 16),
              Image.network(
                filme.poster,
                width: 180,
                height: 270,
                fit: BoxFit.cover,
              ),
              if (filme.assistido)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    children: [
                      Text(
                        'AVALIAÇÃO',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFDEB3AD),
                          fontFamily: 'LemonMilk',
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(5, (starIndex) {
                          return Icon(
                            filme.avaliacao > starIndex
                                ? Icons.star
                                : Icons.star_border,
                            size: 30.0,
                            color: const Color(0xFF653635),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 16),
              Text(
                filme.sinopse,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
