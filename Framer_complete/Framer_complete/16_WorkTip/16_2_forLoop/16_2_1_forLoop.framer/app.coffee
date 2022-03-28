scroll1 = new ScrollComponent
	width: Screen.width, height: Screen.height
	scrollHorizontal: false

for i in [0...10]
	layer = new Layer
		x:125, y: i*550 + 50
		width:500, height:500, parent: scroll1.content
		image : Utils.randomImage()