import 'package:lunii_test/api/api.dart';
import 'package:lunii_test/api/http/http_client.dart';
import 'package:lunii_test/common/theme/theme.dart';
import 'package:lunii_test/home/navigation/library_navigator.dart';
import 'package:lunii_test/home/screens/library_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget _addLogic(Widget child) {
    return MultiProvider(providers: [
      Provider(
        create: (_) => Api(
          HttpClient(
            baseUrl: 'www.omdbapi.com',
            apiKey: 'a35f5dbb',
          ),
        ),
      ),
    ], child: child);
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
    final navigator = LibraryNavigator(navigatorKey);

    return _addLogic(MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      theme: luniiTheme,
      home: LibraryListScreen(
        coordinator: navigator,
      ),
    ));
  }
}
