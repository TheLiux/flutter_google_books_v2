import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_google_books_corsov2/core/application/book_bloc.dart';
import 'package:flutter_google_books_corsov2/core/domain/services/book_service/i_book_service.dart';
import 'package:flutter_google_books_corsov2/injectable.dart';
import 'package:flutter_google_books_corsov2/route.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  final ThemeData theme;
  App({super.key, required this.theme});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookBloc(getIt<IBookService>()),
      child: MaterialApp.router(
        title: 'Flutter Google Books',
        theme: theme.copyWith(textTheme: GoogleFonts.spaceGroteskTextTheme()),
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
