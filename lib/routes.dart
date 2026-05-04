import 'package:flutter/material.dart';
import 'package:flutter_examen/screens/home_page.dart';
import 'screens/list_page.dart';
import 'screens/detail_page.dart';
import 'package:go_router/go_router.dart';


class Routes {
  Routes._();
  static const String home = '/homepage';
  static const String list = '/listpage';
  static const String detail ='/detailpage/:index';
  
  static String detailPath(int index) {
      return '/detailpage/:$index,';
    }

  static Map<String, WidgetBuilder> get routes => {
        home: (_) => const ListPage(),
      };
}


final appRouter = GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(
      path: Routes.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: Routes.list,
      builder: (context, state) => const ListPage(),
    ),
    GoRoute(
      path: Routes.detail,
      builder: (context, state) {
        final int index = state.extra as int;
        return DetailPage(index);
      },
    ),
    
  ],
);