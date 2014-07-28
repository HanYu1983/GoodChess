		
class Just[T](IMaybe[T]):
	private _inst as T
	Instance as T:
		get:
			return _inst
		set:
			_inst = value
			
	IsExist as bool:
		get:
			return _inst is not null
			
	def Map[U](fn as callable) as IMaybe[U]:
		return Just[of U](Instance:fn(self))
		
	def FlatMap[U](fn as callable) as IMaybe[U]:
		return fn(self)