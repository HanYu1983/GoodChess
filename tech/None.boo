import UnityEngine
		
class None[T](IMaybe[T]):
	Instance as T:
		get:
			raise UnityException("None!!")
	IsExist as bool:
		get:
			return false
	def Map[U](fn as callable) as IMaybe[U]:
		return None[of U]()
		
	def FlatMap[U](fn as callable) as IMaybe[U]:
		return None[of U]()