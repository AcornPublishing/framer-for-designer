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

movie_arr = []
for i in [0...3]
	movie = new VideoLayer
		width: 750, height: 700
		video: "images/" + i + ".mp4"
		parent: psd.video
		visible:false
	movie_arr.push(movie)
	movie.player.loop = true

currentMovie = movie_arr[0]
currentMovie.visible = true
currentMovie.player.play()

functionTime = ->
	Events.wrap(currentMovie.player).on "timeupdate", ->
		t = currentMovie.player.currentTime
		d = currentMovie.player.duration
		sliderBar.value = t / d	

functionTime()

img_arr = [ psd.img1, psd.img2, psd.img3 ]

for i in [ 0...3 ]
	img_arr[i].idx = i
	img_arr[i].onClick ->
		currentMovie.player.pause()
		currentMovie = movie_arr[this.idx]
		currentMovie.bringToFront()
		currentMovie.player.play()
		currentMovie.visible = true
		functionTime()

sliderBar.knob.on Events.TouchStart, -> 
	currentMovie.player.pause()
	
sliderBar.knob.on Events.TouchEnd, -> 
	currentMovie.player.play()

sliderBar.on Events.SliderValueChange, ->
	if sliderBar.knob.draggable.isDragging
		ct = sliderBar.value * currentMovie.player.duration
		currentMovie.player.currentTime = ct
		currentMovie.player.play()

psd.icon_pause.onClick ->
	currentMovie.player.pause()
	psd.icon_play.visible = true
	psd.icon_pause.visible = false
psd.icon_play.onClick ->
	currentMovie.player.play()
	psd.icon_play.visible = false
	psd.icon_pause.visible = true

psd.video.states.circle =
	x: 75, y: 100, width: 600, height: 600
	borderRadius: 375

psd.video.onClick ->
	psd.video.stateCycle()