// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ResourceStore on ResourceStoreBase, Store {
  late final _$resourcesAtom =
      Atom(name: 'ResourceStoreBase.resources', context: context);

  @override
  List<Resource>? get resources {
    _$resourcesAtom.reportRead();
    return super.resources;
  }

  @override
  set resources(List<Resource>? value) {
    _$resourcesAtom.reportWrite(value, super.resources, () {
      super.resources = value;
    });
  }

  late final _$fetchDataAsyncAction =
      AsyncAction('ResourceStoreBase.fetchData', context: context);

  @override
  Future fetchData() {
    return _$fetchDataAsyncAction.run(() => super.fetchData());
  }

  @override
  String toString() {
    return '''
resources: ${resources}
    ''';
  }
}
