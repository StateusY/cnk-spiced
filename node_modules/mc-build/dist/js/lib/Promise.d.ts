
export type ThenableStruct<T> = {
	then: <TOut>(onFulfilled: null | ((arg0: T) => any), onRejected?: ((arg0: any) => any)) => ThenableStruct<TOut>
}

export type PromiseSettleOutcome<T> = {
	reason?: null | any, 
	status: string, 
	value?: null | T
}
