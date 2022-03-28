# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "JungIk Lee"
	twitter: ""
	description: ""

layer = new Layer
		backgroundColor: "red"

bg = new BackgroundLayer
bg.onClick ->
	if Utils.isMobile()
		touchX = event.pageX - layer.width / 2
		touchY = event.pageY - layer.height / 2
	else
		touchX = event.offsetX - layer.width / 2
		touchY = event.offsetY - layer.height / 2
	layer.x = touchX
	layer.y = touchY
	layer.html = touchX + "," + touchY