page1 = new PageComponent
	width: Screen.width, height: Screen.height

for i in [0...4]
	for j in [0...4]
		layer = new Layer
			x: i*Screen.width, y:j*Screen.height
			width:Screen.width, height:Screen.height
			parent: page1.content
			image: Utils.randomImage()
		layer.html =  i + "-" + j
		layer.style = 
			"font-size" : "100px"
			"text-align" : "center"
			"padding-top" : "650px"