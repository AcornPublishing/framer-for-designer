# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

# 스와이프 이벤트가 끝나는 시점에 발생하는 이벤트
# 스와이프 end 이벤트는 손을 뗐을 때 발생하는 이벤트이므로, 그것을 주의하자.

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

scroll.content.onSwipeEnd ->
	print "스와이프 이벤트 끝!!"
	box.animate
		properties: 
			rotation: box.rotation + 180
		time: 0.4
	
box = new Layer
	backgroundColor: "red"
box.center()


