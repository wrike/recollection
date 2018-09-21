import 'package:recollection/src/map/immutable_map.dart';

class ImmutableMapBuilder<K, V> {
  Map<K, V> _map;
  bool _controlled;

  ImmutableMapBuilder() {
    _map = {};
    _controlled = true;
  }

  ImmutableMapBuilder.from(Map<K, V> map) {
    _map = Map.of(map);
    _controlled = true;
  }

  ImmutableMapBuilder<K, V> put(K key, V value) {
    _checkState();
    _map[key] = value;

    return this;
  }

  ImmutableMapBuilder<K, V> addAll(Map<K, V> other) {
    _checkState();

    _map.addAll(other);

    return this;
  }

  ImmutableMapBuilder<K, V> addEntries(Iterable<MapEntry<K, V>> newEntries) {
    _checkState();

    _map.addEntries(newEntries);

    return this;
  }

  ImmutableMapBuilder<K, V> clear() {
    _checkState();

    _map.clear();

    return this;
  }

  ImmutableMapBuilder<K, V> putIfAbsent(K key, V Function() ifAbsent) {
    _checkState();

    _map.putIfAbsent(key, ifAbsent);

    return this;
  }

  ImmutableMapBuilder<K, V> remove(Object key) {
    _checkState();

    _map.remove(key);

    return this;
  }

  ImmutableMapBuilder<K, V> removeWhere(bool Function(K key, V value) predicate) {
    _checkState();

    _map.removeWhere(predicate);

    return this;
  }

  ImmutableMapBuilder<K, V> update(K key, V Function(V value) update, {V Function() ifAbsent}) {
    _checkState();

    _map.update(key, update, ifAbsent: ifAbsent);

    return this;
  }

  ImmutableMapBuilder<K, V> updateAll(V Function(K key, V value) update) {
    _checkState();

    _map.updateAll(update);

    return this;
  }

  ImmutableMap<K, V> build() {
    _controlled = false;

    return ImmutableMap.view(_map);
  }

  void _checkState() {
    if (!_controlled) {
      _map = Map.of(_map);
      _controlled = true;
    }
  }
}
