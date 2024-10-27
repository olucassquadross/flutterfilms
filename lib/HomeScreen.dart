import 'package:flutter/material.dart';
import 'movie_service.dart';

class HomeScreen extends StatelessWidget {
  final MovieService movieService = MovieService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Popular Movies')),
      body: FutureBuilder(
        future: movieService.fetchPopularMovies(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final movies = snapshot.data;
            return ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                final movie = movies[index];
                return ListTile(
                  leading: Image.network('https://image.tmdb.org/t/p/w500${movie.posterPath}'),
                  title: Text(movie.title),
                  subtitle: Text('Rating: ${movie.voteAverage}'),
                  onTap: () {
                    // Navigate to MovieDetailScreen
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
