import UnityEngine
		
class TestBase(MonoBehaviour):
	def Should(truth, msg):
		Debug.Log("[test]"+msg) if not truth

