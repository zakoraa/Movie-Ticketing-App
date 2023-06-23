import 'package:flutter/material.dart';
import 'package:movieapp2/core.dart';
import '../../../list/anime_list.dart';
import '../../../list/movie_list.dart';
import '../../../list/series_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, List<MovieClass>> genres = {
      "Movies": movie_list_copied,
      "Series": series_list_copied,
      "Anime": anime_list_copied,
    };
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 125),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30, bottom: 10),
                    child: Text(
                      "Coming Soon",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const ComingSoonImage(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ListViewGenre(genres: genres),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30, bottom: 15),
                    child: Text(
                      "Now Showing",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CarouselSliderNowShowing(genres: genres),
                  const SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
