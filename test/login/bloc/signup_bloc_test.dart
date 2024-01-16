import 'package:lunii_test/api/api/library_api.dart';
import 'package:lunii_test/api/http/http_client.dart';
import 'package:lunii_test/home/logic/library_logic.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  LibraryLogic? logic;

  setUp(() {
    //TODO: mock Library API
    logic = LibraryLogic(
        LibraryApi(HttpClient(baseUrl: 'baseUrl', apiKey: 'apiKey')));
  });

  tearDown(() {});
}
