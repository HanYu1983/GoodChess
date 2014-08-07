import UnityEngine
		
class TestBase(MonoBehaviour):
	def Should(truth, msg):
		if not truth:
			raise UnityException("[test]"+msg)
			/*
		else:
			Debug.Log("[test]$msg OK!")
			*/
