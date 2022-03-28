# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "JungIk Lee"
	twitter: ""
	description: ""


container = new ScrollComponent
	width: Screen.width
	height: Screen.height
	scrollHorizontal: false
	mouseWheelEnabled: true
	
for i in [0...5]
	layer = new Layer
		width: Screen.width
		height: Screen.height
		y: Screen.height * i 
		backgroundColor: Utils.randomColor(1)
		parent: container.content

container.content.draggable.enabled = false
container.onMouseWheel ->
	print container.content.y