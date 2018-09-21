import 'dart:math';

import 'package:recollection/src/list/immutable_list.dart';

class ImmutableListBuilder<E> {
  List<E> _list;
  bool _controlled;

  ImmutableListBuilder() {
    _list = [];
    _controlled = true;
  }

  ImmutableListBuilder.from(Iterable<E> elements) {
    _checkElements(elements);

    _list = elements.toList();
    _controlled = true;
  }

  ImmutableListBuilder<E> add(E value) {
    _checkState();
    _checkElement(value);

    _list.add(value);

    return this;
  }

  ImmutableListBuilder<E> addAll(Iterable<E> iterable) {
    _checkState();
    _checkElements(iterable);

    _list.addAll(iterable);

    return this;
  }

  ImmutableListBuilder<E> clear() {
    _checkState();

    _list.clear();

    return this;
  }

  ImmutableListBuilder<E> fillRange(int start, int end, [E fillValue]) {
    _checkState();
    _checkElement(fillValue);

    _list.fillRange(start, end, fillValue);

    return this;
  }

  ImmutableListBuilder<E> insert(int index, E element) {
    _checkState();
    _checkElement(element);

    _list.insert(index, element);

    return this;
  }

  ImmutableListBuilder<E> insertAll(int index, Iterable<E> iterable) {
    _checkState();
    _checkElement(iterable);

    _list.insertAll(index, iterable);

    return this;
  }

  ImmutableListBuilder<E> remove(Object value) {
    _checkState();
    _checkElement(value);

    _list.remove(value);

    return this;
  }

  ImmutableListBuilder<E> removeAt(int index) {
    _checkState();

    _list.removeAt(index);

    return this;
  }

  ImmutableListBuilder<E> removeLast() {
    _checkState();

    _list.removeLast();

    return this;
  }

  ImmutableListBuilder<E> removeRange(int start, int end) {
    _checkState();

    _list.removeRange(start, end);

    return this;
  }

  ImmutableListBuilder<E> removeWhere(bool Function(E element) test) {
    _checkState();

    _list.removeWhere(test);

    return this;
  }

  ImmutableListBuilder<E> replaceRange(int start, int end, Iterable<E> replacement) {
    _checkState();
    _checkElement(replacement);

    _list.replaceRange(start, end, replacement);

    return this;
  }

  ImmutableListBuilder<E> retainWhere(bool Function(E element) test) {
    _checkState();

    _list.retainWhere(test);

    return this;
  }

  ImmutableListBuilder<E> set(int index, E element) {
    _checkState();
    _checkElement(element);

    _list[index] = element;

    return this;
  }

  ImmutableListBuilder<E> setAll(int index, Iterable<E> iterable) {
    _checkState();
    _checkElements(iterable);

    _list.setAll(index, iterable);

    return this;
  }

  ImmutableListBuilder<E> setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0]) {
    _checkState();
    _checkElements(iterable);

    _list.setRange(start, end, iterable);

    return this;
  }

  ImmutableListBuilder<E> shuffle([Random random]) {
    _checkState();

    _list.shuffle(random);

    return this;
  }

  ImmutableListBuilder<E> sort([int Function(E a, E b) compare]) {
    _checkState();

    _list.sort(compare);

    return this;
  }

  ImmutableList<E> build() {
    _controlled = false;

    return ImmutableList.view(_list);
  }

  void _checkState() {
    if (!_controlled) {
      _list = _list.toList();
      _controlled = true;
    }
  }

  void _checkElement<E>(E element) {
    assert(element != null);
  }

  void _checkElements<E>(Iterable<E> elements) {
    assert(elements.every((e) => e != null));
  }
}
