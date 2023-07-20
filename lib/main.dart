import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/pages/details_page.dart';
import 'package:flutter_application_1/pages/favorites_page.dart';
import 'package:flutter_application_1/pages/history_page.dart';
import 'package:flutter_application_1/pages/other_home_page.dart';
import 'package:flutter_application_1/pages/pokemon_page.dart';

import 'firebase_options.dart';
import 'pages/login_page.dart';
import 'services/data_scraper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodel/my_app_state.dart';
import 'pages/my_home_page.dart';
import 'package:go_router/go_router.dart';

// ListView.builder indexi veriyor bu şekilde yapınca
// Belli bir model oluşturup da yapılabilir valueları olur. (image, id, name etc.)
// uid pubdev'den bulunabilir.
// freezed_annotation package
// models, widgets, pages

// Firebase kurarken web de kur.
// Firebase entegrasyonu, login, şifremi unuttum, register vb.
// Firebase üzerinden modellerden Pokemonları kaydetme. (Kullanıcıya özel / keşfet sayfası (community))
// Collection içine user_id tanımla.

bool isLoggedIn = false;

Future<void> main() async {
  getHttp();
  await pokemonInit();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        if (isLoggedIn) {
          return MyHomePage();
        } else {
          return LoginPage();
        }
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'favorites',
          builder: (BuildContext context, GoRouterState state) {
            return FavoritesPage();
          },
        ),
        GoRoute(
          path: 'history',
          builder: (BuildContext context, GoRouterState state) {
            return HistoryPage();
          },
        ),
        GoRoute(
          path: 'pokemon',
          builder: (BuildContext context, GoRouterState state) {
            return TestPage();
          },
        ),
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return DetailsPage();
          },
        ),
        GoRoute(
          path: 'alldetails',
          builder: (BuildContext context, GoRouterState state) {
            return DetailsPage();
          },
        ),
        GoRoute(
          path: 'otherhome',
          builder: (BuildContext context, GoRouterState state) {
            return OtherHomePage();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //   create: (context) => MyAppState(),
    //   child: MaterialApp(
    //     title: 'Namer App',
    //     theme: ThemeData(
    //       useMaterial3: true,
    //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     ),
    //     home: MyHomePage(),
    //   ),
    // );

    return ChangeNotifierProvider(
        create: (context) => MyAppState(),
        child: MaterialApp.router(
          routerConfig: _router,
          title: 'Namer App',
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
        ));
  }
}
