import 'package:auto_route/auto_route.dart';
import 'package:flutter_google_books_corsov2/route.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(page: DetailsBookRoute.page)
      ];
}
