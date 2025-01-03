import 'package:go_router/go_router.dart';
import '../../features/calculator/view/calculator_view.dart';
import '../../features/sebha/view/sebha_view.dart';
import '../../features/home/view/home_view.dart';
import '../../features/splash/view/splash_view.dart';

abstract class AppRoutes {
  static const splashVeiw = '/';
  static const homeVeiw = '/homeView';
  static const calculatorView = '/calculatorView';
  static const sebhaView = '/sebhaView';
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
      GoRoute(
        path: calculatorView,
        builder: (context, state) => const CalculatorView(),
      ),
      GoRoute(
        path: sebhaView,
        builder: (context, state) => const SebhaView(),
      ),
    ],
  );
}
