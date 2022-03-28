text1 = new TextLayer
	width: 500, height:500, color: "white"
	text: "a", fontSize: 400, textAlign: "center"
	
text1.center()

style = document.createElement('style')
style.type = 'text/css'
style.appendChild(document.createTextNode("@font-face {\n" + "\tfont-family: \"myFont1\";\n" + "\tsrc: local('a'), url('fonts/1.ttf') format('truetype');\n" + "}\n" + "\tfont-family: myFont1 !important;\n" + "}\n"))

document.getElementsByTagName('head')[0].appendChild(style)

text1.style = { "font-family": "myFont1" }