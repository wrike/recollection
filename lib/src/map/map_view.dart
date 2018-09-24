import 'dart:core';

import 'package:meta/meta.dart';

class MapView<K, V> implements Map<K, V> {
  final Map<K, V> _map;

  const MapView()
    : _map = const {};

  MapView.of(Map<K, V> map)
    : assert(map != null),
      _map = map;

  @override
  Iterable<MapEntry<K, V>> get entries {
    return _map.entries;
  }

  @override
  bool get isEmpty {
    return _map.isEmpty;
  }

  @override
  bool get isNotEmpty {
    return _map.isNotEmpty;
  }

  @override
  Iterable<K> get keys {
    return _map.keys;
  }

  @override
  int get length {
    return _map.length;
  }

  @override
  Iterable<V> get values {
    return _map.values;
  }

  @override
  V operator [](Object key) {
    return _map[key];
  }

  @override
  @alwaysThrows
  void operator []=(K key, V value) {
    throw UnsupportedError('indexed set');
  }

  @override
  @alwaysThrows
  void addAll(Map<K, V> other) {
    throw UnsupportedError('addAll');
  }

  @override
  @alwaysThrows
  void addEntries(Iterable<MapEntry<K, V>> newEntries) {
    throw UnsupportedError('addEntries');
  }

  @override
  Map<RK, RV> cast<RK, RV>() {
    return _map.cast<RK, RV>();
  }

  @override
  @alwaysThrows
  void clear() {
    throw UnsupportedError('clear');
  }

  @override
  bool containsKey(Object key) {
    return _map.containsKey(key);
  }

  @override
  bool containsValue(Object value) {
    return _map.containsValue(value);
  }

  @override
  void forEach(void Function(K key, V value) f) {
    return _map.forEach(f);
  }

  @override
  Map<K2, V2> map<K2, V2>(MapEntry<K2, V2> Function(K key, V value) f) {
    return _map.map(f);
  }

  @override
  @alwaysThrows
  V putIfAbsent(K key, V Function() ifAbsent) {
    throw UnsupportedError('putIfAbsent');
  }

  @override
  @alwaysThrows
  V remove(Object key) {
    throw UnsupportedError('remove');
  }

  @override
  @alwaysThrows
  void removeWhere(bool Function(K key, V value) predicate) {
    throw UnsupportedError('removeWhere');
  }

  @override
  @alwaysThrows
  V update(K key, V Function(V value) update, {V Function() ifAbsent}) {
    throw UnsupportedError('update');
  }

  @override
  @alwaysThrows
  void updateAll(V Function(K key, V value) update) {
    throw UnsupportedError('updateAll');
  }
}
