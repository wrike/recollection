import 'package:meta/meta.dart';

class SetView<E> implements Set<E> {
  final Set<E> _set;

  SetView()
    : _set = Set();

  SetView.of(Set<E> set)
    : assert(set != null),
      _set = set is SetView ? (set as SetView<E>)._set : set;

  @override
  E get first => _set.first;

  @override
  bool get isEmpty => _set.isEmpty;

  @override
  bool get isNotEmpty => _set.isNotEmpty;

  @override
  Iterator<E> get iterator => _set.iterator;

  @override
  E get last => _set.last;

  @override
  int get length => _set.length;

  @override
  E get single => _set.single;

  @override
  @alwaysThrows
  bool add(E value) {
    throw UnsupportedError('add');
  }

  @override
  @alwaysThrows
  void addAll(Iterable<E> elements) {
    throw UnsupportedError('add');
  }

  @override
  bool any(bool Function(E element) test) {
    return _set.any(test);
  }

  @override
  Set<R> cast<R>() {
    return _set.cast();
  }

  @override
  @alwaysThrows
  void clear() {
    throw UnsupportedError('clear');
  }

  @override
  bool contains(Object value) {
    return _set.contains(value);
  }

  @override
  bool containsAll(Iterable<Object> other) {
    return _set.containsAll(other);
  }

  @override
  Set<E> difference(Set<Object> other) {
    return _set.difference(other);
  }

  @override
  E elementAt(int index) {
    return _set.elementAt(index);
  }

  @override
  bool every(bool Function(E element) test) {
    return _set.every(test);
  }

  @override
  Iterable<T> expand<T>(Iterable<T> Function(E element) f) {
    return _set.expand(f);
  }

  @override
  E firstWhere(bool Function(E element) test, {E Function() orElse}) {
    return _set.firstWhere(test, orElse: orElse);
  }

  @override
  T fold<T>(T initialValue, T Function(T previousValue, E element) combine) {
    return _set.fold(initialValue, combine);
  }

  @override
  Iterable<E> followedBy(Iterable<E> other) {
    return _set.followedBy(other);
  }

  @override
  void forEach(void Function(E element) f) {
    return _set.forEach(f);
  }

  Set<E> intersection(Set<Object> other) {
    return _set.intersection(other);
  }

  @override
  String join([String separator = ""]) {
    return _set.join(separator);
  }

  E lastWhere(bool Function(E element) test, {E Function() orElse}) {
    return _set.lastWhere(test, orElse: orElse);
  }

  @override
  E lookup(Object object) {
    return _set.lookup(object);
  }

  @override
  Iterable<T> map<T>(T Function(E e) f) {
    return _set.map(f);
  }

  @override
  E reduce(E Function(E value, E element) combine) {
    return _set.reduce(combine);
  }

  @override
  @alwaysThrows
  bool remove(Object value) {
    throw UnsupportedError('remove');
  }

  @override
  @alwaysThrows
  void removeAll(Iterable<Object> elements) {
    throw UnsupportedError('removeAll');
  }

  @override
  @alwaysThrows
  void removeWhere(bool Function(E element) test) {
    throw UnsupportedError('removeWhere');
  }

  @override
  @alwaysThrows
  void retainAll(Iterable<Object> elements) {
    throw UnsupportedError('retainAll');
  }

  @override
  @alwaysThrows
  void retainWhere(bool Function(E element) test) {
    throw UnsupportedError('retainWhere');
  }

  @override
  E singleWhere(bool Function(E element) test, {E Function() orElse}) {
    return _set.singleWhere(test, orElse: orElse);
  }

  @override
  Iterable<E> skip(int count) {
    return _set.skip(count);
  }

  @override
  Iterable<E> skipWhile(bool Function(E value) test) {
    return _set.skipWhile(test);
  }

  @override
  Iterable<E> take(int count) {
    return _set.take(count);
  }

  @override
  Iterable<E> takeWhile(bool Function(E value) test) {
    return _set.takeWhile(test);
  }

  @override
  List<E> toList({bool growable: true}) {
    return _set.toList(growable: growable);
  }

  @override
  Set<E> toSet() {
    return _set.toSet();
  }

  @override
  Set<E> union(Set<E> other) {
    return _set.union(other);
  }

  @override
  Iterable<E> where(bool Function(E element) test) {
    return _set.where(test);
  }

  @override
  Iterable<T> whereType<T>() {
    return _set.whereType();
  }
}
