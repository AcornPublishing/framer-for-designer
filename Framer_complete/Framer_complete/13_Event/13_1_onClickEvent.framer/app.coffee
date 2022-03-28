psd = Framer.Importer.load("imported/onClick_event@1x")

psd.popup.visible = false
psd.schedule.visible = false

psd.btn.on Events.Click,->
	psd.popup.visible = true
	psd.popup.scale = 0.8
	psd.popup.opacity = 0
	psd.popup.animate
		scale : 1, opacity: 1
		options: curve: "spring", time: 0.1
			
psd.popup.on Events.Click,->
	psd.popup.animate
		scale: 0.8, opacity: 0
		options: curve: "spring", time: 0.1
		
psd.menu.on Events.Click,->
	psd.schedule.visible = true
	psd.schedule.x = -500
	psd.schedule.animate
		x:0
		options: curve: "ease-in-out", time: 0.35
	psd.calander.animate
		x: 500, opacity:0.5
		options: curve: "ease-in-out", time: 0.35

psd.schedule.on Events.Click,->
	psd.schedule.animate
		x:-500
		options: curve: "ease-in-out", time: 0.35
	psd.calander.animate
		x: 0,opacity:1
		options: curve: "ease-in-out", time: 0.35
			