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

layerB = new Layer
	y: 400
	backgroundColor: "red"	


layerA.onTouchEnd ->
	layerA.animate
		properties:
			x: 400

layerA.onAnimationStart ->
	layerB.animate
		properties:
			x: 400
