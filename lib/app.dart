import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_google_books_corsov2/core/application/book_bloc.dart';
import 'package:flutter_google_books_corsov2/core/domain/services/book_service/i_book_service.dart';
import 'package:flutter_google_books_corsov2/core/presentation/screens/home_page/home_page.dart';
import 'package:flutter_google_books_corsov2/injectable.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  final ThemeData theme;

  const App({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookBloc(getIt<IBookService>()),
      child: MaterialApp(
        title: 'Flutter Google Books',
        theme: theme.copyWith(textTheme: GoogleFonts.spaceGroteskTextTheme()),
        home: const HomePage(),
      ),
    );
  }
}
