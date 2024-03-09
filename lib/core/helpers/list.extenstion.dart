extension Unique<T> on List<T> {
  List<T> unique() => List<T>.of(Set<T>.of(this));
}
