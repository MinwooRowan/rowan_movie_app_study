import 'package:go_router/go_router.dart';
import 'package:movie_app/presentation/screen/home/home_screen.dart';
import 'package:movie_app/presentation/screen/splash/splash_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routes.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        name: SplashScreen.route,
        builder: ((context, state) {
          return const SplashScreen();
        }),
      ),
      GoRoute(
        path: '/',
        name: HomeScreen.route,
        builder: ((context, state) {
          return const HomeScreen();
        }),
      ),
    ],
  );
}
