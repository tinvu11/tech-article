import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_article/ui/home_screen/bloc/home_bloc.dart';
import 'package:flutter_article/ui/home_screen/widgets/widget_gridview.dart';
import 'package:go_router/go_router.dart';

class TabContent extends StatefulWidget {
  final List<String> categories;
  const TabContent({super.key, required this.categories});

  @override
  State<TabContent> createState() => _TabContentState();
}

class _TabContentState extends State<TabContent>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  late final List<bool> _hasLoaded;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: widget.categories.length,
      vsync: this,
    );
    _tabController.index = 0;
    _hasLoaded = List.generate(widget.categories.length, (index) => false);
    _hasLoaded[0] = true;

    _tabController.addListener(() {
      setState(() {
        _loadTab(_tabController.index);
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _loadTab(int index) {
    if (!_hasLoaded[index]) {
      _hasLoaded[index] = true;
      context.read<HomeBloc>().add(
        HomeEvent.loadData(
          page: 1,
          limit: 20,
          category: widget.categories[index],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: NestedScrollView(
        physics: BouncingScrollPhysics(),
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: Text(
                'Home',
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.search, size: 32.0),
                  onPressed: () {
                    context.push('/search');
                  },
                ),
              ],
              toolbarHeight: 40,
              pinned: false,
              // floating: true,

              // snap: false,
              bottom: TabBar(
                controller: _tabController,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                dividerHeight: 0,
                indicator:
                    const BoxDecoration(), // Bỏ indicator gạch chân mặc định
                splashFactory: NoSplash.splashFactory, // Bỏ hiệu ứng splash
                // overlayColor: MaterialStateProperty.all(Colors.transparent), // Bỏ hiệu ứng highlight
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                labelPadding: const EdgeInsets.only(right: 12.0),
                tabs: List.generate(widget.categories.length, (index) {
                  final isSelected = _tabController.index == index;
                  final title = widget.categories[index];

                  return Tab(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14.0,
                        vertical: 6.0,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? colorScheme.primary
                            : colorScheme.secondary,
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ), // Bo tròn mềm mại hơn
                      ),
                      child: Text(
                        title,
                        style: textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: isSelected
                              ? colorScheme.onPrimary
                              : colorScheme.onSurface,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ];
        },
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: widget.categories
              .map((category) => WidgetListArticle(category: category))
              .toList(),
        ),
      ),
    );
  }
}
