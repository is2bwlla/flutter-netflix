import 'package:flutter/material.dart';
import 'package:netflix/details.dart';

class Movie {
  final String name;
  final String genre;
  final String image;
  final String description;

  Movie({
    required this.name,
    required this.genre,
    required this.image,
    this.description = '',
  });
}

class ListPage extends StatelessWidget {
  ListPage({super.key});

  final List<Movie> MovieList = [
    Movie(
        name: 'Nosferatu',
        genre: 'Horror',
        image: 'assets/images/nosferatu.jpg',
        description: 'Vampiro louco que gosta de sangue e mulher'),

    Movie(
        name: 'Paranorman',
        genre: 'Terror',
        image: 'assets/images/Paranorman.jpg',
        description: "Um menino que ve mortos e zumbis"),

    Movie(
        name: 'Vingadores',
        genre: 'Ação',
        image: 'assets/images/vingadores.jpg',
        description: "Heróis que usam roupas coladas e coloridas.")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Filmes",
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red)),
        backgroundColor: Colors.black,),

      body: ListView.builder(
          itemCount: MovieList.length,
          itemBuilder: (context, index) {
            return  GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> DetailsFilmPage(movie: MovieList[index])));
              },
              child: Container(
                color: Colors.black,
                width: 200,
                height: 400,
                child: Column(
                  children: [
                    Image.asset(MovieList[index].image),
                    Text(MovieList[index].name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21
                    ),),
                    Text(MovieList[index].genre,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),)
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
