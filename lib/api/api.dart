import 'package:lunii_test/api/api/library_api.dart';
import 'package:lunii_test/api/http/http_client.dart';

class Api {
  final HttpClient httpClient;
  final LibraryApi libraryApi;

  Api(this.httpClient) : libraryApi = LibraryApi(httpClient);
}
