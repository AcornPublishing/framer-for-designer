# Import file "animation"
psd = Framer.Importer.load("imported/animation@1x")

psd.bg.scale = 1.2
psd.bg.opacity = 0
psd.logo.scale = 0.5
psd.logo.opacity = 0
psd.logo.midY = 667
psd.text_welcome.opacity = 0
psd.ui_btn.y = 1100
psd.ui_btn.opacity = 0

psd.bg.animate
	scale: 1, opacity : 1

psd.logo.animate
	scale: 1, opacity : 1
	options: 
		time : 0.5
		curve: Spring(damping: 0.40)

psd.logo.animate
	y: 216
	options:
		delay : 1.5
		curve : Spring(damping: 0.66)

animation1 = ->
	psd.text_welcome.animate
		opacity : 1
		options: 
			delay : 1.5
	psd.ui_btn.animate
		y: 893, opacity: 1
		options: 
			curve : "ease"
			time : 0.5
			delay : 1.5

animation1()
