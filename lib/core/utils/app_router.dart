import 'package:bookshelf/features/auth/ui/view/signin_view.dart';
import 'package:bookshelf/features/categories/ui/view/categories_view.dart';
import 'package:bookshelf/features/home/ui/view/home_view.dart';
import 'package:bookshelf/features/splash/ui/view/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/ui/view/signup_view.dart';

class AppRouter {
  static const String kHomeViewRoute = "/homeView";
  static const String kSigninViewRoute = "/signinView";
  static const String kSignupViewRoute = "/signupView";
  static const String kCategoriesViewRoute = "/categoiesView";
  static final router = GoRouter(routes: [
    GoRoute(
      path: kCategoriesViewRoute,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeViewRoute,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: "/",
      builder: (context, state) => const CategoriesView(),
    ),
    GoRoute(
      path: kSigninViewRoute,
      builder: (context, state) => const SignInView(),
    ),
    GoRoute(
      path: kSignupViewRoute,
      builder: (context, state) => const SignUpView(),
    ),
  ]);
}
