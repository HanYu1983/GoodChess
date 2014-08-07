import UnityEngine
class DefalutView (MonoBehaviour, IView):  
	_ary_pageViews as List = []
	
	def Start ():
		pvlist = GetComponents( DefaultPageView )
		for pv as DefaultPageView in pvlist:
			_ary_pageViews.Add( pv )
			
		//for debug below		
		OpenPage( 'mainPage' )
		
	def Update ():
		pass
		
	def OpenPage( pn ):
		pv = GetPage( pn )
		if pv is null:	return
		else:			pv.Create( self as MonoBehaviour );
		
	def ClosePage( pn ):
		pv = GetPage( pn )
		if pv is null:	return
		else:			pv.Destroy()
		
	def GetPage( pn ) as DefaultPageView:
		for pv as DefaultPageView in _ary_pageViews:
			if pv.Name == pn:	return pv
		return null
