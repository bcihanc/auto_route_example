import 'dart:developer';

import 'package:auto_route_example/main.dart';
import 'package:auto_route_example/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BooksWrapperPage extends StatelessWidget {
  const BooksWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoRouter(
      builder: (context, child) {
        return Scaffold(
            appBar: AppBar(
              title: Text('BooksRouterPage'),
              leading: AutoBackButton(),
            ),
            body: child);
      },
    );
  }
}

class BooksPage extends StatelessWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 100,
        child: ElevatedButton(
          onPressed: () => context.pushRoute(BookDetailsRoute(bookId: 3)),
          child: Text('/books/3 with pushRoute'),
        ),
      ),
    );
  }
}

// xcrun simctl openurl booted customscheme://flutterbooksample.com/books/2
// xcrun simctl openurl booted customscheme://flutterbooksample.com/books/2?author=cihan
class BookDetailsPage extends StatelessWidget {
  BookDetailsPage({
    @PathParam('bookId') required this.bookId,
    @QueryParam('author') this.author,
  });

  final int bookId;
  final String? author;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${RouteData.of(context).pathParams}'),
          Text('${RouteData.of(context).queryParams}'),
        ],
      ),
    );
  }
}
