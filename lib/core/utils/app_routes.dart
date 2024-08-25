import 'package:go_router/go_router.dart';
import 'package:mashroa/features/home/presentation/views/home_view.dart';
import 'package:mashroa/features/splash/presentation/views/splash_view.dart';

abstract class AppRoutes {
  static const splashVeiw = '/';
  static const homeVeiw = '/homeView';
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: splashVeiw,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeVeiw,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
