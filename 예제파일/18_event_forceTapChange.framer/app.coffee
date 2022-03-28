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

layer.onForceTapChange ->
	print event.force
	print "포스터치 감도변화"
		