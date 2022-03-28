# Import file "scroll"
psd = Framer.Importer.load("imported/scroll@1x")

scroll1 = new ScrollComponent
	width:750, height:1334, superLayer: psd.page

psd.scr1.superLayer = scroll1.content

scroll1.scrollHorizontal = false


scroll2 = ScrollComponent.wrap(psd.scr2)
scroll2.superLayer = psd.scr1
scroll2.scrollVertical = false

scroll2.contentInset =
	left: 50
 
scroll2.content.draggable.propagateEvents = false

scroll3 = ScrollComponent.wrap(psd.scr3)
scroll3.superLayer = psd.scr1
scroll3.scrollVertical = false
scroll3.content.draggable.propagateEvents = false
scroll3.contentInset =
	left: 50


scroll1.contentInset =
	bottom: 150
 

