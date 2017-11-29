//    MARK: - Context1
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Return>(weak context1: Context1?, `return`: Return?, closure: @escaping (Context1) throws -> Return?) rethrows -> (() throws -> Return?) {
	return { [weak context1] () -> Return? in
		guard let strongContext1: Context1 = context1 else { return `return` }
		return try closure(strongContext1)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Argument1, Return>(weak context1: Context1?, `return`: Return?, closure: @escaping (Context1, Argument1) throws -> Return?) rethrows -> ((Argument1) throws -> Return?) {
	return { [weak context1] (argument1: Argument1) -> Return? in
		guard let strongContext1: Context1 = context1 else { return `return` }
		return try closure(strongContext1, argument1)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Argument1, Argument2, Return>(weak context1: Context1?, `return`: Return?, closure: @escaping (Context1, Argument1, Argument2) throws -> Return?) rethrows -> ((Argument1, Argument2) throws -> Return?) {
	return { [weak context1] (argument1: Argument1, argument2: Argument2) -> Return? in
		guard let strongContext1: Context1 = context1 else { return `return` }
		return try closure(strongContext1, argument1, argument2)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Argument1, Argument2, Argument3, Return>(weak context1: Context1?, `return`: Return?, closure: @escaping (Context1, Argument1, Argument2, Argument3) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3) throws -> Return?) {
	return { [weak context1] (argument1: Argument1, argument2: Argument2, argument3: Argument3) -> Return? in
		guard let strongContext1: Context1 = context1 else { return `return` }
		return try closure(strongContext1, argument1, argument2, argument3)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Argument1, Argument2, Argument3, Argument4, Return>(weak context1: Context1?, `return`: Return?, closure: @escaping (Context1, Argument1, Argument2, Argument3, Argument4) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4) throws -> Return?) {
	return { [weak context1] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4) -> Return? in
		guard let strongContext1: Context1 = context1 else { return `return` }
		return try closure(strongContext1, argument1, argument2, argument3, argument4)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Return>(weak context1: Context1?, `return`: Return?, closure: @escaping (Context1, Argument1, Argument2, Argument3, Argument4, Argument5) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5) throws -> Return?) {
	return { [weak context1] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5) -> Return? in
		guard let strongContext1: Context1 = context1 else { return `return` }
		return try closure(strongContext1, argument1, argument2, argument3, argument4, argument5)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Return>(weak context1: Context1?, `return`: Return?, closure: @escaping (Context1, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6) throws -> Return?) {
	return { [weak context1] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6) -> Return? in
		guard let strongContext1: Context1 = context1 else { return `return` }
		return try closure(strongContext1, argument1, argument2, argument3, argument4, argument5, argument6)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Return>(weak context1: Context1?, `return`: Return?, closure: @escaping (Context1, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7) throws -> Return?) {
	return { [weak context1] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6, argument7: Argument7) -> Return? in
		guard let strongContext1: Context1 = context1 else { return `return` }
		return try closure(strongContext1, argument1, argument2, argument3, argument4, argument5, argument6, argument7)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8, Return>(weak context1: Context1?, `return`: Return?, closure: @escaping (Context1, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8) throws -> Return?) {
	return { [weak context1] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6, argument7: Argument7, argument8: Argument8) -> Return? in
		guard let strongContext1: Context1 = context1 else { return `return` }
		return try closure(strongContext1, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8)
	}
}
//    MARK: - Context2
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Return>(weak context1: Context1?, _ context2: Context2?, `return`: Return?, closure: @escaping (Context1, Context2) throws -> Return?) rethrows -> (() throws -> Return?) {
	return { [weak context1, weak context2] () -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2 else { return `return` }
		return try closure(strongContext1, strongContext2)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Argument1, Return>(weak context1: Context1?, _ context2: Context2?, `return`: Return?, closure: @escaping (Context1, Context2, Argument1) throws -> Return?) rethrows -> ((Argument1) throws -> Return?) {
	return { [weak context1, weak context2] (argument1: Argument1) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2 else { return `return` }
		return try closure(strongContext1, strongContext2, argument1)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Argument1, Argument2, Return>(weak context1: Context1?, _ context2: Context2?, `return`: Return?, closure: @escaping (Context1, Context2, Argument1, Argument2) throws -> Return?) rethrows -> ((Argument1, Argument2) throws -> Return?) {
	return { [weak context1, weak context2] (argument1: Argument1, argument2: Argument2) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2 else { return `return` }
		return try closure(strongContext1, strongContext2, argument1, argument2)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Argument1, Argument2, Argument3, Return>(weak context1: Context1?, _ context2: Context2?, `return`: Return?, closure: @escaping (Context1, Context2, Argument1, Argument2, Argument3) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3) throws -> Return?) {
	return { [weak context1, weak context2] (argument1: Argument1, argument2: Argument2, argument3: Argument3) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2 else { return `return` }
		return try closure(strongContext1, strongContext2, argument1, argument2, argument3)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Argument1, Argument2, Argument3, Argument4, Return>(weak context1: Context1?, _ context2: Context2?, `return`: Return?, closure: @escaping (Context1, Context2, Argument1, Argument2, Argument3, Argument4) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4) throws -> Return?) {
	return { [weak context1, weak context2] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2 else { return `return` }
		return try closure(strongContext1, strongContext2, argument1, argument2, argument3, argument4)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Return>(weak context1: Context1?, _ context2: Context2?, `return`: Return?, closure: @escaping (Context1, Context2, Argument1, Argument2, Argument3, Argument4, Argument5) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5) throws -> Return?) {
	return { [weak context1, weak context2] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2 else { return `return` }
		return try closure(strongContext1, strongContext2, argument1, argument2, argument3, argument4, argument5)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Return>(weak context1: Context1?, _ context2: Context2?, `return`: Return?, closure: @escaping (Context1, Context2, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6) throws -> Return?) {
	return { [weak context1, weak context2] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2 else { return `return` }
		return try closure(strongContext1, strongContext2, argument1, argument2, argument3, argument4, argument5, argument6)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Return>(weak context1: Context1?, _ context2: Context2?, `return`: Return?, closure: @escaping (Context1, Context2, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7) throws -> Return?) {
	return { [weak context1, weak context2] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6, argument7: Argument7) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2 else { return `return` }
		return try closure(strongContext1, strongContext2, argument1, argument2, argument3, argument4, argument5, argument6, argument7)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8, Return>(weak context1: Context1?, _ context2: Context2?, `return`: Return?, closure: @escaping (Context1, Context2, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8) throws -> Return?) {
	return { [weak context1, weak context2] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6, argument7: Argument7, argument8: Argument8) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2 else { return `return` }
		return try closure(strongContext1, strongContext2, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8)
	}
}
//    MARK: - Context3
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, `return`: Return?, closure: @escaping (Context1, Context2, Context3) throws -> Return?) rethrows -> (() throws -> Return?) {
	return { [weak context1, weak context2, weak context3] () -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Argument1, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Argument1) throws -> Return?) rethrows -> ((Argument1) throws -> Return?) {
	return { [weak context1, weak context2, weak context3] (argument1: Argument1) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, argument1)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Argument1, Argument2, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Argument1, Argument2) throws -> Return?) rethrows -> ((Argument1, Argument2) throws -> Return?) {
	return { [weak context1, weak context2, weak context3] (argument1: Argument1, argument2: Argument2) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, argument1, argument2)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Argument1, Argument2, Argument3, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Argument1, Argument2, Argument3) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3) throws -> Return?) {
	return { [weak context1, weak context2, weak context3] (argument1: Argument1, argument2: Argument2, argument3: Argument3) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, argument1, argument2, argument3)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Argument1, Argument2, Argument3, Argument4, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Argument1, Argument2, Argument3, Argument4) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4) throws -> Return?) {
	return { [weak context1, weak context2, weak context3] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, argument1, argument2, argument3, argument4)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Argument1, Argument2, Argument3, Argument4, Argument5) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5) throws -> Return?) {
	return { [weak context1, weak context2, weak context3] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, argument1, argument2, argument3, argument4, argument5)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6) throws -> Return?) {
	return { [weak context1, weak context2, weak context3] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, argument1, argument2, argument3, argument4, argument5, argument6)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7) throws -> Return?) {
	return { [weak context1, weak context2, weak context3] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6, argument7: Argument7) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, argument1, argument2, argument3, argument4, argument5, argument6, argument7)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8) throws -> Return?) {
	return { [weak context1, weak context2, weak context3] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6, argument7: Argument7, argument8: Argument8) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8)
	}
}
//    MARK: - Context4
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4) throws -> Return?) rethrows -> (() throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4] () -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Argument1, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Argument1) throws -> Return?) rethrows -> ((Argument1) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4] (argument1: Argument1) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, argument1)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Argument1, Argument2, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Argument1, Argument2) throws -> Return?) rethrows -> ((Argument1, Argument2) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4] (argument1: Argument1, argument2: Argument2) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, argument1, argument2)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Argument1, Argument2, Argument3, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Argument1, Argument2, Argument3) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4] (argument1: Argument1, argument2: Argument2, argument3: Argument3) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, argument1, argument2, argument3)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Argument1, Argument2, Argument3, Argument4, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Argument1, Argument2, Argument3, Argument4) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, argument1, argument2, argument3, argument4)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Argument1, Argument2, Argument3, Argument4, Argument5) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, argument1, argument2, argument3, argument4, argument5)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, argument1, argument2, argument3, argument4, argument5, argument6)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6, argument7: Argument7) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, argument1, argument2, argument3, argument4, argument5, argument6, argument7)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6, argument7: Argument7, argument8: Argument8) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8)
	}
}
//    MARK: - Context5
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5) throws -> Return?) rethrows -> (() throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5] () -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Argument1, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Argument1) throws -> Return?) rethrows -> ((Argument1) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5] (argument1: Argument1) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, argument1)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Argument1, Argument2, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Argument1, Argument2) throws -> Return?) rethrows -> ((Argument1, Argument2) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5] (argument1: Argument1, argument2: Argument2) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, argument1, argument2)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Argument1, Argument2, Argument3, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Argument1, Argument2, Argument3) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5] (argument1: Argument1, argument2: Argument2, argument3: Argument3) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, argument1, argument2, argument3)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Argument1, Argument2, Argument3, Argument4, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Argument1, Argument2, Argument3, Argument4) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, argument1, argument2, argument3, argument4)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Argument1, Argument2, Argument3, Argument4, Argument5) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, argument1, argument2, argument3, argument4, argument5)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, argument1, argument2, argument3, argument4, argument5, argument6)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6, argument7: Argument7) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, argument1, argument2, argument3, argument4, argument5, argument6, argument7)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6, argument7: Argument7, argument8: Argument8) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8)
	}
}
//    MARK: - Context6
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6) throws -> Return?) rethrows -> (() throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6] () -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Argument1, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Argument1) throws -> Return?) rethrows -> ((Argument1) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6] (argument1: Argument1) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, argument1)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Argument1, Argument2, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Argument1, Argument2) throws -> Return?) rethrows -> ((Argument1, Argument2) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6] (argument1: Argument1, argument2: Argument2) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, argument1, argument2)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Argument1, Argument2, Argument3, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Argument1, Argument2, Argument3) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6] (argument1: Argument1, argument2: Argument2, argument3: Argument3) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, argument1, argument2, argument3)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Argument1, Argument2, Argument3, Argument4, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Argument1, Argument2, Argument3, Argument4) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, argument1, argument2, argument3, argument4)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Argument1, Argument2, Argument3, Argument4, Argument5) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, argument1, argument2, argument3, argument4, argument5)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, argument1, argument2, argument3, argument4, argument5, argument6)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6, argument7: Argument7) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, argument1, argument2, argument3, argument4, argument5, argument6, argument7)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6, argument7: Argument7, argument8: Argument8) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8)
	}
}
//    MARK: - Context7
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7) throws -> Return?) rethrows -> (() throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7] () -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Argument1, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7, Argument1) throws -> Return?) rethrows -> ((Argument1) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7] (argument1: Argument1) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7, argument1)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Argument1, Argument2, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7, Argument1, Argument2) throws -> Return?) rethrows -> ((Argument1, Argument2) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7] (argument1: Argument1, argument2: Argument2) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7, argument1, argument2)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Argument1, Argument2, Argument3, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7, Argument1, Argument2, Argument3) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7] (argument1: Argument1, argument2: Argument2, argument3: Argument3) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7, argument1, argument2, argument3)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Argument1, Argument2, Argument3, Argument4, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7, Argument1, Argument2, Argument3, Argument4) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7, argument1, argument2, argument3, argument4)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7, Argument1, Argument2, Argument3, Argument4, Argument5) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7, argument1, argument2, argument3, argument4, argument5)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7, argument1, argument2, argument3, argument4, argument5, argument6)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6, argument7: Argument7) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7, argument1, argument2, argument3, argument4, argument5, argument6, argument7)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6, argument7: Argument7, argument8: Argument8) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8)
	}
}
//    MARK: - Context8
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - context8: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Context8: AnyObject, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, _ context8: Context8?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7, Context8) throws -> Return?) rethrows -> (() throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7, weak context8] () -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7, let strongContext8: Context8 = context8 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7, strongContext8)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - context8: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Context8: AnyObject, Argument1, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, _ context8: Context8?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7, Context8, Argument1) throws -> Return?) rethrows -> ((Argument1) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7, weak context8] (argument1: Argument1) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7, let strongContext8: Context8 = context8 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7, strongContext8, argument1)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - context8: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Context8: AnyObject, Argument1, Argument2, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, _ context8: Context8?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7, Context8, Argument1, Argument2) throws -> Return?) rethrows -> ((Argument1, Argument2) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7, weak context8] (argument1: Argument1, argument2: Argument2) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7, let strongContext8: Context8 = context8 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7, strongContext8, argument1, argument2)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - context8: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Context8: AnyObject, Argument1, Argument2, Argument3, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, _ context8: Context8?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7, Context8, Argument1, Argument2, Argument3) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7, weak context8] (argument1: Argument1, argument2: Argument2, argument3: Argument3) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7, let strongContext8: Context8 = context8 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7, strongContext8, argument1, argument2, argument3)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - context8: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Context8: AnyObject, Argument1, Argument2, Argument3, Argument4, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, _ context8: Context8?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7, Context8, Argument1, Argument2, Argument3, Argument4) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7, weak context8] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7, let strongContext8: Context8 = context8 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7, strongContext8, argument1, argument2, argument3, argument4)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - context8: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Context8: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, _ context8: Context8?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7, Context8, Argument1, Argument2, Argument3, Argument4, Argument5) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7, weak context8] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7, let strongContext8: Context8 = context8 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7, strongContext8, argument1, argument2, argument3, argument4, argument5)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - context8: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Context8: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, _ context8: Context8?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7, Context8, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7, weak context8] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7, let strongContext8: Context8 = context8 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7, strongContext8, argument1, argument2, argument3, argument4, argument5, argument6)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - context8: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Context8: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, _ context8: Context8?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7, Context8, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7, weak context8] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6, argument7: Argument7) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7, let strongContext8: Context8 = context8 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7, strongContext8, argument1, argument2, argument3, argument4, argument5, argument6, argument7)
	}
}
/**
 Creates a closure that automatically deals with weak-strong dance

 - Parameters:
  - context1: Any context object to weakify and strongify
  - context2: Any context object to weakify and strongify
  - context3: Any context object to weakify and strongify
  - context4: Any context object to weakify and strongify
  - context5: Any context object to weakify and strongify
  - context6: Any context object to weakify and strongify
  - context7: Any context object to weakify and strongify
  - context8: Any context object to weakify and strongify
  - return: Default value or nil of return statement when one of the context doesn't exist.
  - closure: Closure to execute instead of the original one
*/
public func strongify<Context1: AnyObject, Context2: AnyObject, Context3: AnyObject, Context4: AnyObject, Context5: AnyObject, Context6: AnyObject, Context7: AnyObject, Context8: AnyObject, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8, Return>(weak context1: Context1?, _ context2: Context2?, _ context3: Context3?, _ context4: Context4?, _ context5: Context5?, _ context6: Context6?, _ context7: Context7?, _ context8: Context8?, `return`: Return?, closure: @escaping (Context1, Context2, Context3, Context4, Context5, Context6, Context7, Context8, Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8) throws -> Return?) rethrows -> ((Argument1, Argument2, Argument3, Argument4, Argument5, Argument6, Argument7, Argument8) throws -> Return?) {
	return { [weak context1, weak context2, weak context3, weak context4, weak context5, weak context6, weak context7, weak context8] (argument1: Argument1, argument2: Argument2, argument3: Argument3, argument4: Argument4, argument5: Argument5, argument6: Argument6, argument7: Argument7, argument8: Argument8) -> Return? in
		guard let strongContext1: Context1 = context1, let strongContext2: Context2 = context2, let strongContext3: Context3 = context3, let strongContext4: Context4 = context4, let strongContext5: Context5 = context5, let strongContext6: Context6 = context6, let strongContext7: Context7 = context7, let strongContext8: Context8 = context8 else { return `return` }
		return try closure(strongContext1, strongContext2, strongContext3, strongContext4, strongContext5, strongContext6, strongContext7, strongContext8, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8)
	}
}
