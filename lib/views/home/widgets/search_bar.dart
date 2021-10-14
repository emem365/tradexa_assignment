import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tradexa_assignment/controllers/providers.dart';

class SearchBar extends ConsumerWidget {
  SearchBar({Key? key}) : super(key: key);
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final controller = watch(homeControllerProvider);

    return TextField(
      textInputAction: TextInputAction.search,
      controller: textController,
      onChanged: (val){
        controller.onChangeKeyword(val);
      },
      onSubmitted: (val){
        controller.onChangeKeyword(val);
        controller.search();
      },
      style:
          const TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        prefixIcon: controller.searchKeyword != '' ? const Icon(Icons.search, color: Colors.white70): null,
        suffixIcon: GestureDetector(
          child: const Icon(Icons.close, color: Colors.white70),
          onTap: () {
            textController.text = '';
            controller.onChangeKeyword('');
          },
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