import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style:
          const TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search, color: Colors.white70),
        suffixIcon: GestureDetector(
          child: const Icon(Icons.close, color: Colors.white70),
          onTap: () {},
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: Colors.white38,
        labelText: 'Search keyword',
        alignLabelWithHint: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide.none),
      ),
    );
  }
}