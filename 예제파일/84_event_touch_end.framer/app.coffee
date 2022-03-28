# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "JungIk Lee"
	twitter: ""
	description: ""

# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

layer = new Layer
	backgroundColor: "yellow"

layer.onTouchEnd ->
	print "터치 엔드!"