# Recollection

Effective immutable collections for Dart.

[API docs](https://pub.dartlang.org/documentation/recollection/latest/)

## Examples

Create immutable views around list with `ListView`. Recreate lists with `ListBuilder`.

```dart
var list = [1, 2, 3];

var view = ListView.of(list);

list = ListBuilder.from(list)
  .add(4)
  .remove(2)
  .build();
```

Same is possible with sets and maps.

## Justification

SDK immutable collection constructors, like `List.unmodifiable`,
copy whole collection using `Iterator`, which is slow and inefficient.

`built_collection` package contains immutable wrappers around SDK collections, however
there is no way to create immutable wrapper around existing collection without recreating
collection from scratch.

`recollection` package contains immutable collection wrappers that do not copy source collection by themselves.
Also there are builders that can be used to create a copy of existing SDK collection with some changes.
Those are valuable benefits for performance-sensitive scenarios.
