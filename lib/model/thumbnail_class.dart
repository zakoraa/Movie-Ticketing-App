class ThumbNail {
  String? title;
  String? image;

  ThumbNail({required this.title, required this.image});
}

List<ThumbNail> thumbnail_list = [
  ThumbNail(
      title: "Attack on Titan",
      image: "https://wallpaperaccess.com/full/5286028.jpg"),
  ThumbNail(
      title: "Spider-Man: No Way Home",
      image:
          "https://berauterkini.co.id/wp-content/uploads/2021/12/maxresdefault.jpg"),
  ThumbNail(
      title: "MoneyHeist",
      image: "https://i.ebayimg.com/images/g/r9kAAOSwfahjBIzq/s-l1600.jpg"),
  ThumbNail(
      title: "Breaking Bad",
      image:
          "https://awsimages.detik.net.id/community/media/visual/2023/02/14/breaking-bad.jpeg?w=700&q=90"),
  ThumbNail(
      title: "Naruto: Shippuden",
      image: "https://i.ebayimg.com/images/g/Mk4AAOSwKbpjBS3h/s-l1600.jpg"),
];

List<ThumbNail> thumbnail_list_copied = List.from(thumbnail_list);
