import {Iterator} from "../StdTypes"

export declare class Register {
	static $global: any
	protected static globals: {
	}
	static global(name: number): any
	static createStatic<T>(obj: {
	}, name: string, get: (() => T)): void
	static iterator<T>(a: T[]): (() => Iterator<T>)
	static getIterator<T>(a: T[]): Iterator<T>
	protected static mkIter<T>(a: T[]): Iterator<T>
	static extend(superClass: any): void
	static inherits(resolve: any, defer?: boolean): void
	protected static fid: number
	static bind(o: any, m: any): null | any
}

export declare class ArrayIterator<T> {
	constructor(array: T[])
	protected array: T[]
	protected current: number
	hasNext(): boolean
	next(): T
}
