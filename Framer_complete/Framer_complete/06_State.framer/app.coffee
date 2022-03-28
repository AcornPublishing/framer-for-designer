psd = Framer.Importer.load("imported/states@1x")

psd.x.states = 
	on: rotation:0, opacity:1
	off: rotation:-45, opacity:0

psd.x.stateSwitch( "off" )

psd.photo.onTap ->
	psd.x.states.next( "on" , "off" )

psd.x.states.animationOptions = 
	curve: "spring( 300,20,0 )"

psd.info1.states.add
	default: opacity: 1
	state2: opacity: 0
	animationOptions : time: 0.5

psd.info1.onTap ->
	psd.info1.states.next()