import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecommendedPlace extends StatelessWidget {
  const RecommendedPlace(
      {Key? key,
      required this.img,
      required this.place_name,
      required this.tickets,
      required this.cinemas,
      required this.rating})
      : super(key: key);
  final String img;
  final String place_name;
  final String tickets;
  final String cinemas;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: Get.size.width,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 127, 127, 128),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Get.size.height,
            width: Get.size.width * 0.3,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              child: Image.network(
                img,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          SizedBox(
            height: Get.size.height,
            width: Get.size.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  place_name,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.airplane_ticket,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      tickets,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.movie,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      cinemas,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 18.0,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 18,
                  ),
                  Text(
                    rating,
                    style: const TextStyle(fontSize: 12),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
