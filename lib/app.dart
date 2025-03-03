import 'package:zaplab_design/zaplab_design.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'src/homepage.dart';

class App extends StatelessWidget {
  App({super.key});

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: AppResponsiveTheme(
        child: AppBase(
          title: 'Zaplab Demo',
          routerConfig: _router,
          appLogo: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.contain,
          ),
          darkAppLogo: Image.asset(
            'assets/images/logo_dark.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
