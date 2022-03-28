# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "JungIk Lee"
	twitter: ""
	description: ""

oldY = null
isSel = false

floating = new Layer
	width: Screen.width
	height: 200
	backgroundColor: "white"
	html: "Floating Menu"
	style: 
		"color" : "black"
		"textAlign": "center"
		"fontSize": "40px"
		"padding-top": "80px"

floating.isSel = false

scroll = new ScrollComponent
	width: Screen.width
	height: Screen.height
	scrollHorizontal: false

for i in [0...5]
	layer = new Layer
		width: Screen.width
		height: Screen.height
		y: Screen.height * i 
		backgroundColor: Utils.randomColor(1)
		parent: scroll.content

floating.placeBefore scroll

scroll.content.onSwipeUpStart ->
	floating.animate
		properties:
			y: -floating.height
		time: 0.3

scroll.content.onSwipeDownStart ->
	floating.animate
		properties:
			y: 0
		time: 0.3

scroll.content.onMove ->
	if scroll.scrollY > 0 and scroll.scrollY < scroll.content.height - Screen.height
		if oldY isnt null	
			print oldY, scroll.scrollY 
		oldY = scroll.scrollY 
			
		