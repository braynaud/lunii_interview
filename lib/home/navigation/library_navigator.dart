import 'package:lunii_test/home/screens/library_item_screen.dart';
import 'package:lunii_test/home/screens/library_list_screen.dart';
import 'package:flutter/material.dart';

class LibraryNavigator with LibraryListNavigationDelegate {
  final GlobalKey<NavigatorState> navigatorKey;

  LibraryNavigator(this.navigatorKey);

  @override
  void onItemSelected(String id) {
    navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (_) => LibraryItemScreen(
          itemId: id,
        ),
      ),
    );
  }
}
