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
		x: Screen.width * i 
		backgroundColor: Utils.randomColor(1)
		parent: scroll.content
	
scroll.content.onPanRight ->
	print "스크롤 콘텐츠가 오른쪽으로 움직인 x값:" + event.offset.x
