import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController _controller;
  final void Function(String value) onSubmit;

  SearchBar({
    super.key,
    TextEditingController? controller,
    required this.labelText,
    required this.hintText,
    required this.onSubmit,
  }) : _controller = controller ?? TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onSubmitted: (value) => onSubmit(value),
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          onPressed: () => onSubmit(_controller.value.text),
          icon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
