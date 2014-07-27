		
interface IMaybe[T]:
	Instance as T:
		get;
	IsExist as bool:
		get;
	def Map(fn as callable)
	def FlatMap(fn as callable)