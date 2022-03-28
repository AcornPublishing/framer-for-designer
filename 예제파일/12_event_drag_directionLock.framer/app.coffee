# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "JungIk Lee"
	twitter: ""
	description: ""


layer = new Layer
	width: 150
	height: 150	
	backgroundColor: "yellow"
	borderRadius: "50%"

layer.draggable.enabled = true
layer.center()
layer.draggable.directionLock = true

layer.onDirectionLockStart ->
    print "directionLock 이벤트 시작!"