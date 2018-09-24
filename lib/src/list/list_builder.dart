import 'dart:math';

import 'package:recollection/src/list/list_view.dart';

class ListBuilder<E> {
  List<E> _list;
  bool _controlled;

  ListBuilder() {
    _list = [];
    _controlled = true;
  }

  ListBuilder.from(Iterable<E> list) {
    assert(list != null);

    _list = list.toList();
    _controlled = true;
  }

  ListBuilder<E> add(E value) {
    _checkState();

    _list.add(value);

    return this;
  }

  ListBuilder<E> addAll(Iterable<E> iterable) {
    _checkState();

    _list.addAll(iterable);

    return this;
  }

  ListBuilder<E> clear() {
    _checkState();

    _list.clear();

    return this;
  }

  ListBuilder<E> fillRange(int start, int end, [E fillValue]) {
    _checkState();

    _list.fillRange(start, end, fillValue);

    return this;
  }

  ListBuilder<E> insert(int index, E element) {
    _checkState();

    _list.insert(index, element);

    return this;
  }

  ListBuilder<E> insertAll(int index, Iterable<E> iterable) {
    _checkState();

    _list.insertAll(index, iterable);

    return this;
  }

  ListBuilder<E> remove(Object value) {
    _checkState();

    _list.remove(value);

    return this;
  }

  ListBuilder<E> removeAt(int index) {
    _checkState();

    _list.removeAt(index);

    return this;
  }

  ListBuilder<E> removeLast() {
    _checkState();

    _list.removeLast();

    return this;
  }

  ListBuilder<E> removeRange(int start, int end) {
    _checkState();

    _list.removeRange(start, end);

    return this;
  }

  ListBuilder<E> removeWhere(bool Function(E element) test) {
    _checkState();

    _list.removeWhere(test);

    return this;
  }

  ListBuilder<E> replaceRange(int start, int end, Iterable<E> replacement) {
    _checkState();

    _list.replaceRange(start, end, replacement);

    return this;
  }

  ListBuilder<E> retainWhere(bool Function(E element) test) {
    _checkState();

    _list.retainWhere(test);

    return this;
  }

  ListBuilder<E> set(int index, E element) {
    _checkState();

    _list[index] = element;

    return this;
  }

  ListBuilder<E> setAll(int index, Iterable<E> iterable) {
    _checkState();

    _list.setAll(index, iterable);

    return this;
  }

  ListBuilder<E> setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0]) {
    _checkState();

    _list.setRange(start, end, iterable);

    return this;
  }

  ListBuilder<E> shuffle([Random random]) {
    _checkState();

    _list.shuffle(random);

    return this;
  }

  ListBuilder<E> sort([int Function(E a, E b) compare]) {
    _checkState();

    _list.sort(compare);

    return this;
  }

  ListView<E> build() {
    _controlled = false;

    return ListView.of(_list);
  }

  void _checkState() {
    if (!_controlled) {
      _list = _list.toList();
      _controlled = true;
    }
  }
}
