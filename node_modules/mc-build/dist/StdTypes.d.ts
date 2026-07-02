
/**
An `Iterator` is a structure that permits iteration over elements of type `T`.

Any class with matching `hasNext()` and `next()` fields is considered an `Iterator`
and can then be used e.g. in `for`-loops. This makes it easy to implement
custom iterators.

@see https://haxe.org/manual/lf-iterators.html
*/
export type Iterator<T> = {
	/**
	Returns `false` if the iteration is complete, `true` otherwise.
	
	Usually iteration is considered to be complete if all elements of the
	underlying data structure were handled through calls to `next()`. However,
	in custom iterators any logic may be used to determine the completion
	state.
	*/
	hasNext: () => boolean, 
	/**
	Returns the current item of the `Iterator` and advances to the next one.
	
	This method is not required to check `hasNext()` first. A call to this
	method while `hasNext()` is `false` yields unspecified behavior.
	
	On the other hand, iterators should not require a call to `hasNext()`
	before the first call to `next()` if an element is available.
	*/
	next: () => T
}

/**
An `Iterable` is a data structure which has an `iterator()` method.
See `Lambda` for generic functions on iterable structures.

@see https://haxe.org/manual/lf-iterators.html
*/
export type Iterable<T> = {
	iterator: () => Iterator<T>
}

/**
A `KeyValueIterator` is an `Iterator` that has a key and a value.
*/
export type KeyValueIterator<K, V> = Iterator<{
	key: K, 
	value: V
}>

/**
A `KeyValueIterable` is a data structure which has a `keyValueIterator()`
method to iterate over key-value-pairs.
*/
export type KeyValueIterable<K, V> = {
	keyValueIterator: () => KeyValueIterator<K, V>
}
