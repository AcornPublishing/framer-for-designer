psd = Framer.Importer.load("imported/music@1x")

Utils.globalLayers( psd )

audio = new Audio
audio.src = "mp3/0.mp3" 
audio.play()

eq_arr = [ eq1, eq2, eq3, eq4, eq5 ]

for i in [0...5]
	eq_arr[i].originY = 1
		
	eq_arr[i].animate
		scaleY : Utils.randomNumber(0.1,1)
		options: time:0.12
		
	eq_arr[i].on Events.AnimationEnd,->
		this.animate
			scaleY : Utils.randomNumber(0.1,1)
			options: time:0.12

music_arr = [ music_0, music_1, music_2, music_3, music_4 ]

for i in [0...5]
	music_arr[i].idx = i
	music_arr[i].onClick ->
		path = "mp3/" + this.idx + ".mp3"
		audio.src = path		
		audio.play()
		
		dim.parent = this




