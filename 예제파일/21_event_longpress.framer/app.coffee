# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "LeeJungIk"
	twitter: ""
	description: ""

n = 1

layer = new Layer
	backgroundColor: "yellow"
	width: 100
	height: 100

layer.center()
layer.draggable.enabled = true
layer.draggable.enabled = false

longAni = new Animation layer,
	rotation: 5 
	options:
		time: 0.04
			
longAni.onAnimationEnd ->
	n = n * -1
	longAni.properties.rotation = 5 * n 
	longAni.start()
	
layer.onLongPress ->
	layer.draggable.enabled = true
	longAni.start()

layer.onTouchEnd ->
	layer.draggable.enabled = false
	longAni.stop()
	layer.rotation = 0 