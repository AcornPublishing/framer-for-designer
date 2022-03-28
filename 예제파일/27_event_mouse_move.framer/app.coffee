# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "JungIk Lee"
	twitter: ""
	description: ""


bg = new BackgroundLayer
bg.onMouseMove ->
	print "offsetX:" + event.offsetX, "offsetY:" + event.offsetY