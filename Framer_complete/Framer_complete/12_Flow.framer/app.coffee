psd = Framer.Importer.load("imported/onBoarding@1x")

flow1 = new FlowComponent

flow1.showNext(psd.board1)

psd.btn1.onClick ->
    flow1.showNext(psd.board2)
psd.icon1.onClick ->
	flow1.showOverlayTop(psd.up)

psd.btn2.onClick ->
    flow1.showNext(psd.board3)
psd.back2.onClick ->
    flow1.showPrevious(psd.board1)
psd.icon2.onClick ->
	flow1.showOverlayTop(psd.up)

psd.btn3.onClick ->
    flow1.showNext(psd.board4)
psd.back3.onClick ->
    flow1.showPrevious(psd.board2)
psd.icon3.onClick ->
	flow1.showOverlayTop(psd.up)

psd.back4.onClick ->
    flow1.showPrevious(psd.board3)
psd.icon4.onClick ->
	flow1.showOverlayTop(psd.up)



