class SetBuilder<E> {
  Set<E> _set;
  bool _controlled;

  SetBuilder() {
    _set = Set();
    _controlled = true;
  }

  SetBuilder.from(Set<E> set) {
    assert(set != null);

    _set = set.toSet();
    _controlled = true;
  }

  SetBuilder<E> add(E value) {
    _checkState();

    _set.add(value);

    return this;
  }

  SetBuilder<E> addAll(Iterable<E> elements) {
    _checkState();

    _set.addAll(elements);

    return this;
  }

  SetBuilder<E> clear() {
    _checkState();

    _set.clear();

    return this;
  }

  SetBuilder<E> remove(Object value) {
    _checkState();

    _set.remove(value);

    return this;
  }

  SetBuilder<E> removeAll(Iterable<Object> elements) {
    _checkState();

    _set.removeAll(elements);

    return this;
  }

  SetBuilder<E> removeWhere(bool Function(E element) test) {
    _checkState();

    _set.removeWhere(test);

    return this;
  }

  SetBuilder<E> retainAll(Iterable<Object> elements) {
    _checkState();

    _set.retainAll(elements);

    return this;
  }

  SetBuilder<E> retainWhere(bool Function(E element) test) {
    _checkState();

    _set.retainWhere(test);

    return this;
  }

  void _checkState() {
    if (!_controlled) {
      _set = _set.toSet();
      _controlled = true;
    }
  }
}
