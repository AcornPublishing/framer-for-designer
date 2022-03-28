scroll = new ScrollComponent
	width : Screen.width, height : Screen.height
	scrollVertical : false
 
for i in [0...10]
	layer = new Layer
		width:500, height:700
		x : 500 * i, parent : scroll.content
		image : Utils.randomImage()
	layer.centerY()
	
	layer.xPos = layer.x
	layer.isSmall = true

	layer.onClick ->
		if this.isSmall
			this.isSmall = false
			scroll.scrollHorizontal = false
			this.bringToFront()
			this.animate
				x: this.x - this.screenFrame.x 
				y: this.y - this.screenFrame.y
				width: Screen.width
				height: Screen.height
				options: 
					curve: "spring"
		else
			this.isSmall = true
			scroll.scrollHorizontal = true
			this.animate
				x: this.xPos
				y: 317
				width: 500
				height: 700
				options:
					curve: "spring"
