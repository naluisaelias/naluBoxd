import 'package:flutter/material.dart';
import 'filme.dart';

class DetalhesFilmePage extends StatelessWidget {
  const DetalhesFilmePage({super.key});

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
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Image.network(
                filme.poster,
                width: 150,
                height: 225,
                fit: BoxFit.cover,
              ),
              if (filme.assistido)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (starIndex) {
                    return Icon(
                      filme.avaliacao > starIndex
                          ? Icons.star
                          : Icons.star_border,
                      size: 30.0,
                      color: Color(0xFF653635),
                    );
                  }),
                ),
              const SizedBox(height: 16),
              Text(
                filme.sinopse,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
