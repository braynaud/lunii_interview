import 'package:lunii_test/api/api/library_api.dart';
import 'package:lunii_test/api/api_models/home/item_details.dart';
import 'package:lunii_test/common/logic/loading_state.dart';

import 'package:mobx/mobx.dart';

part 'library_item_logic.g.dart';

class LibraryItemLogic = LibraryItemLogicBase with _$LibraryItemLogic;

abstract class LibraryItemLogicBase with Store {
  final LibraryApi _api;
  final String itemId;

  LibraryItemLogicBase(this._api, {required this.itemId});

  @observable
  late ItemDetails item;

  @observable
  LoadingState loadingState = LoadingState.loading;

  @action
  void setLoading(LoadingState state) {
    loadingState = state;
  }

  @action
  Future<void> init() async {
    setLoading(LoadingState.loading);
    try {
      item = await _api.getItem(itemId);
      setLoading(LoadingState.success);
    } catch (e) {
      setLoading(LoadingState.error);
    }
  }
}
