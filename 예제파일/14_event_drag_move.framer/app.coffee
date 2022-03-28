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
layer.onMove ->
	print layer.x, layer.y