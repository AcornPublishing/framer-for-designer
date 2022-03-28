# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "JungIk Lee"
	twitter: ""
	description: ""


layerA = new Layer
	backgroundColor: "yellow"
	
layerA.onTouchEnd ->
	layerA.animate
		properties:
			x: 600
		time: 5

layerB = new Layer
	backgroundColor: "blue"
layerB.center()
layerB.onClick ->
	layerA.animateStop()

layerA.onAnimationStop ->
	print "정지!!"
