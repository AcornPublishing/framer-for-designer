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
layer.pinchable.enabled = true

layer.center()
 
layer.onRotateEnd ->
    print layer.rotation