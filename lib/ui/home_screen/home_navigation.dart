import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// import RoutePaths from 'package:flutter_article/presentation/navigation/route_paths.dart';
class HomeNavigation extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const HomeNavigation({super.key, required this.navigationShell});

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;
  bool isColumn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Colors.grey[600]!,
              width: 0.4, // Độ dày của đường viền
            ),
          ),
        ),
        child: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    final texTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Theme(
      data: Theme.of(context).copyWith(
        splashFactory: NoSplash.splashFactory, // Bỏ hiệu ứng sóng nước
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        iconSize: 28,
        enableFeedback: false,
        onTap: _onItemTapped,
        selectedLabelStyle: texTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: texTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        currentIndex: widget.navigationShell.currentIndex,
        selectedItemColor: colorScheme.primary,

        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.bookmarks),
            icon: Icon(Icons.bookmarks_outlined),
            label: 'Marks',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.settings),
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.navigationShell.goBranch(index);
  }
}
