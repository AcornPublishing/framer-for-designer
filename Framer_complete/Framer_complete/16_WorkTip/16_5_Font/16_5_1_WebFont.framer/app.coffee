img = new Layer
	width: 750, height:1334, image: Utils.randomImage(),opacity:0.75

title = new TextLayer
	width: 500, height:500, color: "white"
	text: "0", fontSize: 400, textAlign: "center"
	
title.center()

Utils.insertCSS('@import url(https://fonts.googleapis.com/css?family=Bungee+Shade|Ewert|Fredoka+One|Monoton|Playball|Raleway+Dots|Vast+Shadow)') 

font1 = "'Ewert', cursive"
font2 = "'Raleway Dots', cursive"
font3 = "'Bungee Shade', cursive"
font4 = "'Vast Shadow', cursive"
font5 = "'Monoton', cursive"
font6 = "'Fredoka One', cursive"
font7 = "'Playball', cursive"

font_arr = [  font1, font2, font3, font4, font5, font6, font7 ]

count = 0

Utils.interval 1, ->
	count += 1 
	title.text = count
	title.style = {
		fontFamily : Utils.randomChoice(font_arr)
	}
