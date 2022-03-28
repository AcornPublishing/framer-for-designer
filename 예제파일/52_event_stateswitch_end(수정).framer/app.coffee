# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "JungIk Lee"
	twitter: ""
	description: ""

isSel = false

layerA = new Layer
	backgroundColor: "yellow"
	
layerA.states.aniStart = 
	x: 300
	y: 500
	backgroundColor: "blue"

layerA.states.aniEnd = 
	x: 0
	y: 0
	backgroundColor: "yellow"



layerA.onClick ->
	layerA.animate("aniStart")


layerA.onStateSwitchEnd ->
	if layerA.states.current.name is "aniStart"
		layerA.animate("aniEnd")
	print "끝"