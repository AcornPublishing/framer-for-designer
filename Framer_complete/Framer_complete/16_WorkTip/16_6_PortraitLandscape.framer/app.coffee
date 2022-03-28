psd = Framer.Importer.load("imported/portlateLandscape@1x")

icon_arr = [ psd.icon1, psd.icon2, psd.icon3,psd.icon4, psd.icon5,psd.icon6, psd.icon7  ]

portrait = ->
	psd.bg.rotation = 0
	psd.bg.center()
	psd.status_bar.visible = true
	psd.text.visible = true
	psd.icon.rotation = 0
	psd.icon.center()
	psd.title.centerX()
	psd.title.y = 82
	for i in [0...7]
		icon_arr[i].rotation = 0

landscape = ->
	psd.bg.rotation = -Framer.Device.orientation
	psd.bg.center()
	psd.status_bar.visible = false
	psd.text.visible = false
	psd.icon.rotation = -Framer.Device.orientation
	psd.icon.center()
	psd.title.centerX()
	psd.title.y = 65
	for i in [0...7]
		icon_arr[i].rotation = Framer.Device.orientation

checkRotation = ->
	if Framer.Device.orientation == 0
		portrait()
	else if Framer.Device.orientation == 90
		landscape()
	else if Framer.Device.orientation == -90
		landscape()

window.addEventListener "orientationchange", ->
	checkRotation()	
Framer.Device.on "change:orientation", ->
	checkRotation()