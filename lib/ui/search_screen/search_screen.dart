import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_article/ui/search_screen/bloc/search_screen_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 28,
        title: CustomSearchAppBar(
          controller: _searchController,
          onSubmitted: (value) {
            if (value.isNotEmpty) {
              context.read<SearchScreenBloc>().add(
                SearchScreenEvent.search(query: value),
              );
              context.push('/result', extra: value);
            }
          },
        ),
      ),
    );
  }
}

class CustomSearchAppBar extends StatefulWidget {
  final TextEditingController controller;
  final Function(String) onSubmitted;

  const CustomSearchAppBar({
    super.key,
    required this.controller,
    required this.onSubmitted,
  });

  @override
  State<CustomSearchAppBar> createState() => _CustomSearchAppBarState();
}

class _CustomSearchAppBarState extends State<CustomSearchAppBar> {
  bool _showClearButton = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onTextChanged);
    _showClearButton = widget.controller.text.isNotEmpty;
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTextChanged);
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      _showClearButton = widget.controller.text.isNotEmpty;
    });
  }

  void _clearText() {
    widget.controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorsScheme = Theme.of(context).colorScheme;
    return SizedBox(
      height: 40,
      child: TextField(
        controller: widget.controller,
        autofocus: true,
        onSubmitted: widget.onSubmitted,
        maxLines: 1,
        style: textTheme.bodyLarge,
        decoration: InputDecoration(
          hintText: 'Tìm kiếm trong News',
          hintStyle: textTheme.bodyMedium?.copyWith(
            color: colorsScheme.onSecondary,
          ),
          suffixIcon: _showClearButton
              ? IconButton(
                  icon: Icon(
                    Icons.cancel_rounded,
                    size: 20,
                    color: colorsScheme.onSecondary,
                  ),
                  onPressed: _clearText,
                )
              : null,
          filled: true,
          fillColor: colorsScheme.secondary,

          contentPadding: const EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 16,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
