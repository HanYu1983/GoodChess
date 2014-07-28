

interface IMaybe[T]:
	Instance as T:
		get;
	IsExist as bool:
		get;
	def Map[U](fn as callable) as IMaybe[U]
	def FlatMap[U](fn as callable) as IMaybe[U]