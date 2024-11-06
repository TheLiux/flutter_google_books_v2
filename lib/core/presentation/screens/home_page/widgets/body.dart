import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_google_books_corsov2/core/application/book_bloc.dart';
import 'package:flutter_google_books_corsov2/core/presentation/screens/home_page/widgets/body_initial.dart';
import 'package:flutter_google_books_corsov2/core/presentation/screens/home_page/widgets/book_list_view.dart';
import 'package:flutter_google_books_corsov2/core/presentation/widgets/error_snack_bar.dart';
import 'package:flutter_google_books_corsov2/core/presentation/widgets/search_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<BookBloc, BookState>(
      listener: (context, state) {
        if (state is BookError) {
          ScaffoldMessenger.of(context).showSnackBar(
            ErrorSnackBar(
              errorMessage: 'Si è verificato un errore',
            ),
          );
        }
      },
      child: Column(
        children: [
          SearchBar(
            labelText: "Inserisci il nome di un libro",
            hintText: "Es: La Divina Commedia",
            onSubmit: (value) {
              context.read<BookBloc>().add(BookFetchByQuery(query: value));
            },
          ),
          Expanded(
            child: BlocBuilder<BookBloc, BookState>(
              builder: (context, state) {
                if (state is BookLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state is BookLoaded) {
                  return BookListView(
                    books: state.books,
                  );
                }

                return const BodyInitial();
              },
            ),
          ),
        ],
      ),
    );
  }
}
