layer1 = new Layer
	width: Screen.width, height: Screen.height
	backgroundColor: null
layer1.draggable.enabled = true

for i in [0...3]
	for j in [0...3]
		for k in [0...3]
			layer = new Layer
				x: i*200+100, y:j*200+400, z:k*250+50
				brightness: k*50
				rotationX: 0, rotationY: 0, rotationZ: 0
				width: 150, height:150, parent: layer1
				borderRadius: 30
				shadowX:20, shadowY: 20
				shadowBlur: 20
				shadowColor: "rgba(0,0,0,0.5)"
				image: Utils.randomImage()