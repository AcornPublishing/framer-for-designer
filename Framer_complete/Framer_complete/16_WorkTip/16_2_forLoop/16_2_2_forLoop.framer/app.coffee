scroll1 = new ScrollComponent
	width: Screen.width, height: Screen.height
	scrollHorizontal: false

for i in [0...2]
	for j in [0...10]
		layer = new Layer
			x:i*350+50, y: j*350 + 50
			width:300, height:300, parent: scroll1.content
			image : Utils.randomImage()
