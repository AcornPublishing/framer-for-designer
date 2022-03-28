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
layer.center()
layer.onMouseOver ->
	print "마우스 오버!!"
	
layer.onMouseOut ->
	print "마우스 아웃!!"
