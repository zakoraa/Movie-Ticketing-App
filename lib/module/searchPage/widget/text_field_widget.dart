import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        cursorColor: Colors.white,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 13.0),
          fillColor: const Color.fromARGB(106, 177, 177, 177),
          filled: true,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintText: "Search Mails Or Branch",
          hintStyle: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.transparent)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.transparent)),
        ),
      ),
    );
  }
}
