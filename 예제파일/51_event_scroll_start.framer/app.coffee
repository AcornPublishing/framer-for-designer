# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "JungIk Lee"
	twitter: ""
	description: ""


scroll = new ScrollComponent
	width: Screen.width
	height: Screen.height
	scrollVertical: false

for i in [0...5]
	layer = new Layer
		width: Screen.width
		height: Screen.height
		backgroundColor: Utils.randomColor(1)
		x: Screen.width * i 
		parent: scroll.content

scroll.onScrollStart ->
	print "스크롤 터치 시작!!"

box = new Layer
	backgroundColor: "red"
box.center()
