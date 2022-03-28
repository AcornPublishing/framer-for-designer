cnt = 1
bg = new BackgroundLayer

frame = new Layer
	width: 50
	height: 72
	clip: true

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
	cnt += 1
	spriteAnimation.properties.x = -50 * cnt
	spriteAnimation.start()

spriteAnimation.start()