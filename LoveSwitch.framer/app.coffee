# Love Switcher by Kirill Pochivalov
# Made on Framer Studio

# Set Backgroiund
background = new BackgroundLayer
	backgroundColor: "#2F3847"

# Add Container
container = new Layer
	width: 100
	height: 50
	borderRadius: 50
	backgroundColor: "#222832"

# Add Switcher		
switcher = new Layer
	width: 40
	height: 40
	borderRadius: 40
	backgroundColor: "#E84A5F"
	
# Add Heart	
heart = new Layer
	width: 30, height: 30
	image: "images/Heart.png"
	scale: 0.5
	saturate: 0
	opacity: 0

# Center Layers
container.center()
switcher.centerY()
switcher.centerX(-25)
heart.centerY(+1)
heart.centerX(+25)

# Set Animations
switcher.states.add
	first: x: switcher.x + 50
switcher.states.animationOptions =
	curve: "spring(500,25,0)"
	
heart.states.add
	first: opacity: 0.3, scale: 1
heart.states.animationOptions =
		curve: "spring(500,15,0)"

# Add Event	
switcher.on Events.Click, ->
 	switcher.states.next()
 	heart.states.next()
