# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "JungIk Lee"
	twitter: ""
	description: ""


layer = new Layer
layer.width = Screen.width
layer.height = Screen.height

Screen.onEdgeSwipeLeft ->
	print event.distance
	layer.x = event.distance.x