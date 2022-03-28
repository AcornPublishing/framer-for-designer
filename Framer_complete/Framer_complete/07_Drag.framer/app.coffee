psd = Framer.Importer.load("imported/drag@1x")

psd.card.draggable = true

psd.card.draggable.momentumOptions =
	friction:8, tolerance: 0.1

psd.card.draggable.constraints = 
	x:88,y:250, width:580,height:900

psd.card.draggable.speedX = 0.5

psd.card.draggable.overdragScale = 0.7

psd.card.draggable.bounceOptions =
	tension: 500, friction: 26, tolerance: 0