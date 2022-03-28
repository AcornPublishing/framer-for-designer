# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "JungIk Lee"
	twitter: ""
	description: ""

layer = new Layer
	backgroundColor : "red"

bg = new BackgroundLayer
bg.onTap ->
	layer.x = event.point.x - layer.width / 2
	layer.y = event.point.y - layer.height / 2