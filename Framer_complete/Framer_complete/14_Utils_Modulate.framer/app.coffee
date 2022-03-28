# Import file "modulate"
psd = Framer.Importer.load("imported/modulate@1x")

scroll1 = new ScrollComponent
	size:Screen.size, index:2, scrollHorizontal: false
psd.scr.superLayer = scroll1.content
psd.banner1_2.opacity = 0
psd.banner2_2.opacity = 0
psd.banner3_2.opacity = 0

scroll1.on Events.Move, ->
# 	print scroll1.scrollY
	psd.search.y = Utils.modulate(scroll1.scrollY, [0,200], [0,-80],true)
	psd.img.opacity = Utils.modulate(scroll1.scrollY, [0,600], [1,0],true)
	psd.img.scale= Utils.modulate(scroll1.scrollY, [0,600], [1,0.5],true)
	
bannerArr = [psd.banner1_2, psd.banner2_2, psd.banner3_2 ]	
scroll1.on Events.Move, ->
	for i in [0...3]
		bannerArr[i].opacity = Utils.modulate(scroll1.scrollY,[(i+1)*100,(i+1)*300],[0,1],true)