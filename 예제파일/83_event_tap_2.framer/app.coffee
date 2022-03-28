# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "JungIk Lee"
	twitter: ""
	description: ""

bg = new BackgroundLayer
bg.onTap ->
	layerW = Utils.randomNumber(10,150)
	#print layerW, Math.round( layerW ), Math.floor( layerW ), Math.ceil( layerW )
	layer = new Layer
		backgroundColor: Utils.randomColor(1)
		width: layerW
		height: layerW
		x: event.point.x - layerW / 2
		y: event.point.y - layerW / 2