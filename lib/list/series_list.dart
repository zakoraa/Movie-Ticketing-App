import '../model/movie_class.dart';

List<MovieClass> series_list = [
  MovieClass(
      title: "Money Heist",
      year: 2017,
      rating: 8.2,
      image:
          "https://m.media-amazon.com/images/M/MV5BODI0ZTljYTMtODQ1NC00NmI0LTk1YWUtN2FlNDM1MDExMDlhXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_.jpg"),
  MovieClass(
      title: "Breaking Bad",
      year: 2008,
      rating: 9.5,
      image:
          "https://m.media-amazon.com/images/M/MV5BYTU3NWI5OGMtZmZhNy00MjVmLTk1YzAtZjA3ZDA3NzcyNDUxXkEyXkFqcGdeQXVyODY5Njk4Njc@._V1_FMjpg_UX1000_.jpg"),
  MovieClass(
      title: "Dark",
      year: 2017,
      rating: 8.7,
      image:
          "https://m.media-amazon.com/images/M/MV5BOTk2NzUyOTctZDdlMS00MDJlLTgzNTEtNzQzYjFhNjA0YjBjXkEyXkFqcGdeQXVyMjg1NDcxNDE@._V1_FMjpg_UX1000_.jpg"),
  MovieClass(
      title: "Stranger Things",
      year: 2016,
      rating: 8.7,
      image:
          "https://m.media-amazon.com/images/M/MV5BN2EyZWIwYjItZWM2Mi00YzM1LWFhYzQtZGZmYzlhNWZkYWQyXkEyXkFqcGdeQXVyNDI0MTA5NTE@._V1_.jpg"),
  MovieClass(
      title: "The 100",
      year: 2014,
      rating: 7.6,
      image:
          "https://m.media-amazon.com/images/M/MV5BNjRiYTIzZmUtMTFkNS00ZTM0LWE4ODAtMDliMGE4NzM5ZjVlXkEyXkFqcGdeQXVyNDQ0MTYzMDA@._V1_.jpg"),
  MovieClass(
      title: "Lucifer",
      year: 2016,
      rating: 8.1,
      image:
          "https://m.media-amazon.com/images/M/MV5BNDJjMzc4NGYtZmFmNS00YWY3LThjMzQtYzJlNGFkZGRiOWI1XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UX1000_.jpg"),
// MovieClass(title:"Sex Education", 2019, 8.3,
  //     "https://m.media-amazon.com/images/M/MV5BOTE0MjQ1NDU3OV5BMl5BanBnXkFtZTgwNTI4MTgwNzM@._V1_FMjpg_UX1000_.jpg"),
];

List<MovieClass> series_list_copied = List.from(series_list);
