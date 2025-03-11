import 'package:flutter/material.dart';

class Movie {
  final String name;
  final String genre;
  final String image;

  Movie({
    required this.name,
    required this.genre,
    required this.image
  });
}

class ListPage extends StatelessWidget {
  ListPage({super.key});

  final List<Movie> MovieList = [
    Movie(name: 'Nosferatu', genre: 'Horror', image: 'assets/images/nosferatu.jpg'),
    Movie(name: 'Entrevista com o Vampiro', genre: 'Drama', image: 'assets/images/entrevistaVamp.jpg'),
    Movie(name: 'O Homem do Saco', genre: 'Terror', image: 'assets/images/OHomemdoSaco.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Filmes",
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red))),
      body: ListView.builder(
          itemCount: MovieList.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.black,
              width: 200,
              height: 250,
              child: Column(
                children: [
                  Image.asset(MovieList[index].image),
                  Text(MovieList[index].name),
                  Text(MovieList[index].genre)
                ],
              ),
            );
          }
      ),
    );
  }
}
