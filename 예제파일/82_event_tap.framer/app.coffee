# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "JungIk Lee"
	twitter: ""
	description: ""

layer_1 = new Layer
	backgroundColor: "red"

layer_2 = new Layer
	backgroundColor: "blue"
	x: 300
	y: 200

layer_3 = new Layer
	backgroundColor: "yellow"
	x: 200
	y: 600


layer_1.onTap ->
	print event.point.x, event.point.y


layer_2.onTap ->
	print event.point.x, event.point.y
	
layer_3.onTap ->
	print event.point.x, event.point.y