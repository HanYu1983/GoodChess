import UnityEngine
		
class DefaultPageView(MonoBehaviour):
	public Name as string
	public Prefab as GameObject
	_instance as GameObject
	
	def Create( parent as MonoBehaviour ) as GameObject:
		if _instance is not null:
			return
		_instance = Instantiate( Prefab, parent.transform.position, parent.transform.rotation ) as GameObject
		_instance.transform.parent = parent.transform
		
	def Destroy():
		Destroy _instance

