psd = Framer.Importer.load("imported/page@1x")

pageComp1 = new PageComponent
	width:750, height:1334, index:0, scrollHorizontal: false, directionLock: true

psd.page1.parent = pageComp1.content
psd.page2.parent = pageComp1.content
psd.page3.parent = pageComp1.content

pageComp2 = new PageComponent
	width : 750, height : 1334, scrollVertical : false, 
	parent : pageComp1.content

page1arr = [ psd.page1_1, psd.page1_2, psd.page1_3, psd.page1_4 ]

for i in page1arr
	i.superLayer = pageComp2.content

pageComp1.content.draggable.overdragScale = 0
pageComp2.content.draggable.overdragScale = 0.1

psd.indicator.parent = pageComp2

indicator_arr = [ psd.indicator1,psd.indicator2,psd.indicator3,psd.indicator4 ]

checkPage = ->
	for i in indicator_arr
		i.opacity = 0.2
	if pageComp2.currentPage == psd.page1_1
		psd.indicator1.opacity = 0.75
	else if pageComp2.currentPage == psd.page1_2
		psd.indicator2.opacity = 0.75
	else if pageComp2.currentPage == psd.page1_3
		psd.indicator3.opacity = 0.75
	else if pageComp2.currentPage == psd.page1_4
		psd.indicator4.opacity = 0.75
	
pageComp2.on "change:currentPage",->
	checkPage()	
checkPage()



