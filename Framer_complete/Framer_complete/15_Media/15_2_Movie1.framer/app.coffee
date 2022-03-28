psd = Framer.Importer.load("imported/mp4@1x")

bg = new BackgroundLayer

psd.title2.visible = false
psd.title3.visible = false
psd.icon_play.visible = false
psd.video.clip = true

sliderBar= new SliderComponent
	x:35, y:755, width:680, height: 4
	knobSize: 25
sliderBar.knob.backgroundColor = "black"

movie1 = new VideoLayer
	width: 750, height: 700
	video: "images/0.mp4"
	parent: psd.video

movie1.player.play()
movie1.player.loop = true

Events.wrap(movie1.player).on "timeupdate", ->
	t = movie1.player.currentTime
	d = movie1.player.duration
	sliderBar.value = t / d	

sliderBar.knob.on Events.TouchStart, -> 
	movie1.player.pause()
	
sliderBar.knob.on Events.TouchEnd, -> 
	movie1.player.play()

sliderBar.on Events.SliderValueChange, ->
	if sliderBar.knob.draggable.isDragging
		ct = sliderBar.value * movie1.player.duration
		movie1.player.currentTime = ct
		movie1.player.play()

psd.icon_pause.onClick ->
	movie1.player.pause()
	psd.icon_play.visible = true
	psd.icon_pause.visible = false
psd.icon_play.onClick ->
	movie1.player.play()
	psd.icon_play.visible = false
	psd.icon_pause.visible = true

psd.video.states.circle =
	x: 75, y: 100, width: 600, height: 600
	borderRadius: 375

psd.video.onClick ->
	psd.video.stateCycle()