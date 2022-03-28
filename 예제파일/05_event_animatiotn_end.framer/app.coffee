# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "JungIk Lee"
	twitter: ""
	description: ""


layer = new Layer
	backgroundColor: "yellow"
	
layer.onTouchEnd ->
	layer.animate
		properties:
			x: 400

layer.onAnimationEnd ->
	layer.animate
		properties:
			y: 500	

