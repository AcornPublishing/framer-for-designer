navigationBar = new Layer
	width:750, height:100
	backgroundColor: "#61c0b5"

imageLayer1 = new Layer
	width: 750, height: 900,y:100
	image: "images/img01.png"

icon = new Layer
	width:100, height:100, backgroundColor: "#f4cc44"
	x:620,y:950, borderRadius: 50
	
whiteLayer = new Layer
	y:1000, width:750, height:230, backgroundColor: "#ffffff"
whiteLayer.sendToBack()

navigationBar.html = "Framer Sample"
navigationBar.style = 
	"font-size" : "36px"
	"text-align" : "center"
	"line-height" : "240%"
whiteLayer.html = "01 SAMPLE TEXT"
whiteLayer.style = 
	"color" : "rgba(0,0,0,0.3)"
	"font-size" : "50px"
	"text-align" : "center"
	"line-height" : "430%"


