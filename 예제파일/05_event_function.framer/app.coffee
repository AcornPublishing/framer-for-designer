layerA = new Layer

onTouchEnd = () ->
	print "hello"

layerA.on(Events.TouchEnd, onTouchEnd )
