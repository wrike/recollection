import 'package:recollection/src/map/map_view.dart';

class MapBuilder<K, V> {
  Map<K, V> _map;
  bool _controlled;

  MapBuilder() {
    _map = {};
    _controlled = true;
  }

  MapBuilder.from(Map<K, V> map) {
    _map = Map.of(map);
    _controlled = true;
  }

  MapBuilder<K, V> put(K key, V value) {
    _checkState();

    _map[key] = value;

    return this;
  }

  MapBuilder<K, V> addAll(Map<K, V> other) {
    _checkState();

    _map.addAll(other);

    return this;
  }

  MapBuilder<K, V> addEntries(Iterable<MapEntry<K, V>> newEntries) {
    _checkState();

    _map.addEntries(newEntries);

    return this;
  }

  MapBuilder<K, V> clear() {
    _checkState();

    _map.clear();

    return this;
  }

  MapBuilder<K, V> putIfAbsent(K key, V Function() ifAbsent) {
    _checkState();

    _map.putIfAbsent(key, ifAbsent);

    return this;
  }

  MapBuilder<K, V> remove(Object key) {
    _checkState();

    _map.remove(key);

    return this;
  }

  MapBuilder<K, V> removeWhere(bool Function(K key, V value) predicate) {
    _checkState();

    _map.removeWhere(predicate);

    return this;
  }

  MapBuilder<K, V> update(K key, V Function(V value) update, {V Function() ifAbsent}) {
    _checkState();

    _map.update(key, update, ifAbsent: ifAbsent);

    return this;
  }

  MapBuilder<K, V> updateAll(V Function(K key, V value) update) {
    _checkState();

    _map.updateAll(update);

    return this;
  }

  MapView<K, V> build() {
    _controlled = false;

    return MapView.from(_map);
  }

  void _checkState() {
    if (!_controlled) {
      _map = Map.of(_map);
      _controlled = true;
    }
  }
}
