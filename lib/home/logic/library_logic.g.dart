// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_logic.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LibraryLogic on LibraryLogicBase, Store {
  late final _$libraryItemsAtom =
      Atom(name: 'LibraryLogicBase.libraryItems', context: context);

  @override
  List<ItemSummary> get libraryItems {
    _$libraryItemsAtom.reportRead();
    return super.libraryItems;
  }

  @override
  set libraryItems(List<ItemSummary> value) {
    _$libraryItemsAtom.reportWrite(value, super.libraryItems, () {
      super.libraryItems = value;
    });
  }

  late final _$loadingStateAtom =
      Atom(name: 'LibraryLogicBase.loadingState', context: context);

  @override
  LoadingState get loadingState {
    _$loadingStateAtom.reportRead();
    return super.loadingState;
  }

  @override
  set loadingState(LoadingState value) {
    _$loadingStateAtom.reportWrite(value, super.loadingState, () {
      super.loadingState = value;
    });
  }

  late final _$searchAsyncAction =
      AsyncAction('LibraryLogicBase.search', context: context);

  @override
  Future<void> search(String query) {
    return _$searchAsyncAction.run(() => super.search(query));
  }

  late final _$LibraryLogicBaseActionController =
      ActionController(name: 'LibraryLogicBase', context: context);

  @override
  void setLoading(LoadingState state) {
    final _$actionInfo = _$LibraryLogicBaseActionController.startAction(
        name: 'LibraryLogicBase.setLoading');
    try {
      return super.setLoading(state);
    } finally {
      _$LibraryLogicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
libraryItems: ${libraryItems},
loadingState: ${loadingState}
    ''';
  }
}
