psd = Framer.Importer.load("imported/page Event@1x")

page_img = new PageComponent
	x:55, y:217, width:640, height:660, scrollVertical: false, clip:false

img_arr = [ psd.img0, psd.img1, psd.img2, psd.img3, psd.img4 ]

for i in img_arr
	i.parent = page_img.content
	
page_title = new Layer
	y:257, width:750, height:563, clip: false, backgroundColor: null

title_arr = [ psd.title0, psd.title1, psd.title2, psd.title3, psd.title4 ]

for i in [0...5]
	title_arr[i].parent = page_title
	title_arr[i].y = i*570
	title_arr[i].opacity = 0

page_portrait = new PageComponent
	y:1005, width: 750, height: 120
	scrollVertical: false, scrollHorizontal: false
	
portrait_arr = [ psd.portrait0, psd.portrait1, psd.portrait2, psd.portrait3, psd.portrait4 ]

for i in portrait_arr
	i.parent = page_portrait.content

dot_arr = [ psd.dot0, psd.dot1, psd.dot2, psd.dot3, psd.dot4 ]

page_img.on "change:currentPage",->
	pageNumber = page_img.horizontalPageIndex(page_img.currentPage)
	
	for i in dot_arr
		i.opacity = 0.2
	dot_arr[ pageNumber ].opacity = 0.8
	
	for i in title_arr
		i.animate
			opacity : 0
			options : time : 0.5
	
	title_arr[ pageNumber ].animate
		opacity: 1

page_img.content.on "change:x",->
	psd.anchor.x = page_img.content.x/ 4 + 700
	page_title.y = page_img.content.x * 0.9 + 257


page_img.content.on Events.AnimationEnd,->
	pageNumber = page_img.horizontalPageIndex(page_img.currentPage)
	page_portrait.snapToPage( portrait_arr[ pageNumber ])

page_img.snapToPage(psd.img1)