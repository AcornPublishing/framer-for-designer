psd = Framer.Importer.load("imported/HitTest@1x")

psd.icon_camera.draggable.enabled = true

psd.icon_camera.draggable.constraints = 
	width : 750, height : 1334

hitTest = (layer1, layer2)->
	if (layer1.minX <= layer2.maxX) && (layer1.minY <= layer2.maxY) && (layer1.maxX >= layer2.minX) && (layer1.maxY >= layer2.minY)
		return true
	else
		return false

psd.icon_camera.on Events.DragEnd,->
	if hitTest( psd.icon_camera, psd.icon_trash ) == true
		psd.icon_camera.animate
			scale:0
	else
		psd.icon_camera.animate
			x : 54, y : 56
