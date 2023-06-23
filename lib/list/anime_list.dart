import '../model/movie_class.dart';

List<MovieClass> anime_list = [
  MovieClass(
      title: "Naruto: Shippuden",
      year: 2007,
      rating: 8.7,
      image:
          "https://m.media-amazon.com/images/M/MV5BZGFiMWFhNDAtMzUyZS00NmQ2LTljNDYtMmZjNTc5MDUxMzViXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_FMjpg_UX1000_.jpg"),
  MovieClass(
      title: "Attack on Titan",
      year: 2013,
      rating: 9.0,
      image:
          "https://m.media-amazon.com/images/M/MV5BMGY3Mzg3M2UtNzYxNi00ZDYzLTlhMTQtMjkzZTA2MWQ4NjA0XkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_FMjpg_UX1000_.jpg"),
  MovieClass(
      title: "Haikyu!!",
      year: 2014,
      rating: 8.7,
      image:
          "https://m.media-amazon.com/images/M/MV5BNjkyNDI2MTgtN2Y3NS00M2RjLWJhNDMtMmNmZmUwMDQwZTE1XkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_FMjpg_UX1000_.jpg"),
  MovieClass(
      title: "Kimi no nawa",
      year: 2016,
      rating: 8.4,
      image:
          "https://m.media-amazon.com/images/M/MV5BODRmZDVmNzUtZDA4ZC00NjhkLWI2M2UtN2M0ZDIzNDcxYThjL2ltYWdlXkEyXkFqcGdeQXVyNTk0MzMzODA@._V1_FMjpg_UX1000_.jpg"),
  MovieClass(
      title: "DragonBall Super",
      year: 2015,
      rating: 8.3,
      image:
          "https://m.media-amazon.com/images/M/MV5BY2I2MzI1ODYtMWRlOS00MzdhLWEyOWEtYWJhNmFiZTIxMGJhXkEyXkFqcGdeQXVyMTExNDQ2MTI@._V1_.jpg"),
  MovieClass(
      title: "One Punch Man",
      year: 2015,
      rating: 8.7,
      image:
          "https://m.media-amazon.com/images/M/MV5BZjJlNzE5YzEtYzQwYS00NTBjLTk5YzAtYzUwOWQyM2E3OGI2XkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_FMjpg_UX1000_.jpg")
];

List<MovieClass> anime_list_copied = List.from(anime_list);
