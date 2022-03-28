scroll1 = new ScrollComponent
	width: Screen.width, height: Screen.height
	scrollHorizontal: false

for i in [0...4]
	for j in [0...10]
		layer = new Layer
			x:i*165+50, y: j*310 + 50
			width:160, height:300, parent: scroll1.content
			image : Utils.randomImage()