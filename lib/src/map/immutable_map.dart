import 'dart:core';

import 'package:meta/meta.dart';

class ImmutableMap<K, V> implements Map<K, V> {
  final Map<K, V> _map;

  const ImmutableMap()
    : _map = const {};

  ImmutableMap.from(Map<K, V> map)
    : assert(_checkNotNullMap(map)),
      _map = Map.from(map);

  ImmutableMap.view(Map<K, V> map)
    : assert(_checkNotNullMap(map)),
      _map = map;

  @override
  bool get isEmpty {
    return _map.isEmpty;
  }

  @override
  bool get isNotEmpty {
    return _map.isNotEmpty;
  }

  @override
  int get length {
    return _map.length;
  }

  @override
  Iterable<K> get keys {
    return _map.keys;
  }

  @override
  Iterable<V> get values {
    return _map.values;
  }

  @override
  Iterable<MapEntry<K, V>> get entries {
    return _map.entries;
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

  bool _checkNotNullMap(Map<K, V> map) {
    return map.entries.every((entry) => entry.key != null && entry.value != null);
  }
}
