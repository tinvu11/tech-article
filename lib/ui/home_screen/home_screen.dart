import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_article/ui/home_screen/bloc/home_bloc.dart';
import 'package:flutter_article/ui/home_screen/widgets/tab_content.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const HomeEvent.loadData(page: 1, limit: 20));
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // Quan trọng: phải gọi super.build(context)
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.when(
          tabContentInitial: () => Container(),
          tabContentLoading: () =>
              const Center(child: CircularProgressIndicator()),
          tabContentLoaded: (categories, meta, hasReachedMax) =>
              TabContent(categories: categories),
          tabContentError: (message) => Center(child: Text(message)),
        );
      },
    );
  }
}
