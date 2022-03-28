# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "JungIk Lee"
	twitter: ""
	description: ""


# swipe down end 이벤트
# 최초 스와이프 방향이 down(아래쪽)인 상태에서 스와이프가 끝났을 때, 딱 한번의 이벤트를 감지한다.
# 최초 스와이프 방향이 up이거나 다른 방향이면 이벤트가 들어오지 않는다.

layer = new Layer
	backgroundColor: "red"
layer.draggable.enabled = true
layer.draggable.horizontal = false
layer.center()

layer.onSwipeDownEnd ->
	print "down방향 스와이프 끝!!" + layer.y