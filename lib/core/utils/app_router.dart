import 'package:bookshelf/features/auth/ui/view/login_view.dart';
import 'package:bookshelf/features/home/ui/view/home_view.dart';
import 'package:bookshelf/features/splash/ui/view/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String kHomeViewRoute = "/homeView";
  static const String kLoginViewRoute = "/loginView";
  static const String kLogUpViewRoute = "/logupView";
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeViewRoute,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kLoginViewRoute,
      builder: (context, state) => const LoginView(),
    ),
  ]);
}
