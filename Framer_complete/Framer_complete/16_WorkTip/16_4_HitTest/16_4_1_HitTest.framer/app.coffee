dragLayer = new Layer
	backgroundColor : "red"
dragLayer.draggable.enabled = true
	
object = new Layer
object.center()

hitTest = ( layer1, layer2 )->
	if (layer1.minX <= layer2.maxX) && (layer1.minY <= layer2.maxY) && (layer1.maxX >= layer2.minX) && (layer1.maxY >= layer2.minY)
		return true
	else
		return false

dragLayer.on "change:point",->
		if hitTest(dragLayer,object) == true
			dragLayer.backgroundColor = "green"
		else
			dragLayer.backgroundColor = "red"