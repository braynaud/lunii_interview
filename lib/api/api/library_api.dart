import 'dart:async';
import 'package:lunii_test/api/api_models/home/item_details.dart';
import 'package:lunii_test/api/api_models/home/item_summary.dart';
import 'package:lunii_test/api/http/http_client.dart';

class LibraryApi {
  final HttpClient _http;

  LibraryApi(this._http);

  Future<List<ItemSummary>> search(String query) async {
    final Map<String, dynamic> response = await _http.get('s=$query');
    if (response['Response'] == 'False') return [];
    final List data = response['Search'];
    final List<ItemSummary> result =
        data.map((item) => ItemSummary.fromJson(item)).toList();
    return result;
  }

  Future<ItemDetails> getItem(String imdbId) async {
    final Map<String, dynamic> response = await _http.get('i=$imdbId');
    final ItemDetails result = ItemDetails.fromJson(response);
    return result;
  }
}
