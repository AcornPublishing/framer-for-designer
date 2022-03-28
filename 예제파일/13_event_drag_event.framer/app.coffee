# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "LeeJungIk"
	twitter: ""
	description: ""


layer = new Layer
	width: 150
	height: 150	
	backgroundColor: "yellow"
	borderRadius: "50%"
	
layer.draggable.enabled = true
layer.center()

layer.onDragStart ->
	layer.animate
		properties:
			scale: 1.2
		time: 0.2

layer.onDragMove ->
	layer.backgroundColor = "red"

layer.onDragEnd ->
	layer.animate
		properties:
			scale: 1.0
			backgroundColor: "yellow"
		time: 0.2

