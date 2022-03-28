# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "LeeJungIk"
	twitter: ""
	description: ""


layer = new Layer
	backgroundColor: "yellow"
layer.draggable.enabled = true
layer.onDrag ->
	print "현재x위치:" + layer.x, "현재y위치:" + layer.y
	print "x축으로 움직인 거리:" + event.offset.x, "y축으로 움직인 거리:" + event.offset.y