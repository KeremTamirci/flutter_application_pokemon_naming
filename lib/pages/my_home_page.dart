import 'package:go_router/go_router.dart';

import '../pages/history_page.dart';
import '../pages/favorites_page.dart';
import '../pages/pokemon_page.dart';
import '../pages/generator_page.dart';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;
  var selectedSideBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = GeneratorPage();
        break;
      case 1:
        page = FavoritesPage();
        break;
      case 2:
        page = HistoryPage();
        break;
      case 3:
        page = TestPage();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    var mainArea = ColoredBox(
      color: theme.colorScheme.surfaceVariant,
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 200),
        child: page,
      ),
    );
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        drawer: drawerMethod(context),
        body: Center(
          child: mainArea,
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: theme.colorScheme.primary,
          ), // sets the inactive color of the `BottomNavigationBar`
          child: BottomNavigationBar(
            backgroundColor: theme.colorScheme.primary,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.catching_pokemon),
                label: 'Pokémon',
              ),
            ],
            currentIndex: selectedIndex,
            unselectedItemColor: Colors.black87,
            showUnselectedLabels: true,
            selectedItemColor: Colors.yellow[700],
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
          ),
        ),
      );
    });
  }

  Drawer drawerMethod(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 120,
            child: const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ListTile(
            title: const Text('All Pokémon'),
            onTap: () async {
              // Update the state of the app
              context.go("/otherhome");
              // Then close the drawer
              context.pop();
            },
          ),
          ListTile(
            title: const Text('Shared Pokémon'),
            onTap: () {
              // Update the state of the app
              // Then close the drawer
              context.go("/sharedpokemon");
              context.pop();
            },
          ),
          ListTile(
            title: const Text('Placeholder'),
            onTap: () {
              // Update the state of the app
              // Then close the drawer
              context.go("/testingpage");
              context.pop();
            },
          ),
        ],
      ),
    );
  }
}
