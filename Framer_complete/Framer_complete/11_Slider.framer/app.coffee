photo = new Layer
	width: 750, height: 750, y:100
	image: "images/photo.png"

slider1 = new SliderComponent
	midX: Screen.width/2, y:1000, width:500

slider1.on "change:value",->
	photo.sepia = slider1.value*100

slider1.backgroundColor = "#67b4ba"
slider1.fill.backgroundColor = "#59503e"
	
slider2 = new SliderComponent
	midX: Screen.width/2, y:1100, width:500

slider2.min = 0
slider2.max = 10
slider2.value = 10

slider2.on "change:value",->
	photo.blur = slider2.value

slider3 = new SliderComponent
	midX: Screen.width/2, y:1200, width:500

slider3.knob.on Events.Move,->
	photo.borderRadius = slider3.value*375
	
slider3.knob.borderRadius = 0
slider3.knob.rotation = 45