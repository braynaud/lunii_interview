// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_item_logic.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LibraryItemLogic on LibraryItemLogicBase, Store {
  late final _$itemAtom =
      Atom(name: 'LibraryItemLogicBase.item', context: context);

  @override
  ItemDetails get item {
    _$itemAtom.reportRead();
    return super.item;
  }

  bool _itemIsInitialized = false;

  @override
  set item(ItemDetails value) {
    _$itemAtom.reportWrite(value, _itemIsInitialized ? super.item : null, () {
      super.item = value;
      _itemIsInitialized = true;
    });
  }

  late final _$loadingStateAtom =
      Atom(name: 'LibraryItemLogicBase.loadingState', context: context);

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

  late final _$initAsyncAction =
      AsyncAction('LibraryItemLogicBase.init', context: context);

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  late final _$LibraryItemLogicBaseActionController =
      ActionController(name: 'LibraryItemLogicBase', context: context);

  @override
  void setLoading(LoadingState state) {
    final _$actionInfo = _$LibraryItemLogicBaseActionController.startAction(
        name: 'LibraryItemLogicBase.setLoading');
    try {
      return super.setLoading(state);
    } finally {
      _$LibraryItemLogicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
item: ${item},
loadingState: ${loadingState}
    ''';
  }
}
