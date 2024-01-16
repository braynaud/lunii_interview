import 'package:lunii_test/api/api/library_api.dart';
import 'package:lunii_test/api/api_models/home/item_summary.dart';
import 'package:lunii_test/common/logic/loading_state.dart';

import 'package:mobx/mobx.dart';

part 'library_logic.g.dart';

class LibraryLogic = LibraryLogicBase with _$LibraryLogic;

abstract class LibraryLogicBase with Store {
  final LibraryApi _api;

  LibraryLogicBase(this._api);

  @observable
  List<ItemSummary> libraryItems = [];

  @observable
  LoadingState loadingState = LoadingState.loading;

  @action
  void setLoading(LoadingState state) {
    loadingState = state;
  }

  @action
  Future<void> search(String query) async {
    try {
      if (query.isEmpty || query.length < 4) return;
      final List<ItemSummary> searchResult = await _api.search(query);
      if (searchResult.isEmpty) return;
      libraryItems = searchResult;
    } catch (e) {
      //TODO: handle errors
    }
  }
}
