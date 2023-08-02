import 'package:bookshelf/features/home/ui/view/home_view.dart';
import 'package:bookshelf/features/splash/ui/view/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {

  static const String kHomeViewRoute = "/homeView";
  // static const String kHomeViewRoute = "/home_view";
  // static const String kHomeViewRoute = "/home_view";
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeViewRoute,
      builder: (context, state) => const HomeView(),
    ),
  ]);
}
