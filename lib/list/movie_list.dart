import '../model/movie_class.dart';

List<MovieClass> movie_list = [
  MovieClass(
      title: "The Shawshank Redemption",
      year: 1994,
      rating: 9.3,
      image:
          "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg"),
  MovieClass(
      title: "The Avengers Endgame",
      year: 2019,
      rating: 8.4,
      image:
          "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_FMjpg_UX1000_.jpg"),
  MovieClass(
      title: "The Dark Knight",
      year: 2008,
      rating: 9.0,
      image:
          "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_FMjpg_UX1000_.jpg"),
  MovieClass(
      title: "Spider-Man: No Way Home",
      year: 2021,
      rating: 8.2,
      image:
          "https://m.media-amazon.com/images/M/MV5BOGRkMDgwMjMtZmFkZi00NjEwLTllMDktMDcxZmQxYmYwNTVlXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg"),
  MovieClass(
      title: "Bohemian Rhapsody",
      year: 2018,
      rating: 7.9,
      image:
          "https://m.media-amazon.com/images/M/MV5BMTA2NDc3Njg5NDVeQTJeQWpwZ15BbWU4MDc1NDcxNTUz._V1_FMjpg_UX1000_.jpg"),
];

List<MovieClass> movie_list_copied = List.from(movie_list);
