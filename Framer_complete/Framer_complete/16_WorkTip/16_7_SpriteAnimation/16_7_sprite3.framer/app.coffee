cnt = 1
totals = 9 
bg = new BackgroundLayer

frame = new Layer
	width: 50
	height: 72
	clip: true
	backgroundColor: null
frame.center()
frame.scale = 2

sprite = new Layer
	width: 500
	height: 72
	image: "images/sprite-steps.png"
	parent: frame	

spriteAnimation = new Animation sprite,
	x: -50 * cnt
	options:	
		time: 0
		delay: 0.1
		 
spriteAnimation.onAnimationEnd ->
	if cnt < totals
		cnt += 1
	else 
		cnt = 1
	spriteAnimation.properties.x = -50 * cnt
	spriteAnimation.start()

spriteAnimation.start()