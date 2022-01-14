--[[

	GD50 2022
	Pong Remake (with some powerup funsies)
	
	Author Matthew Maravilla
	maravillamatthew@gmail.com

	Take on the Pong project but with additional features ->
		- powerups
			-> ball speed powerup
			-> timer based paddle slowdown
			-> timer based invisibility
		
		-> powerups created through ball state system
			-> paddles will have different colors reflecting side

]]

push = require 'push'

Class = require 'class'

-- init game values and other important values stored here
require 'constants'

require 'Paddle'
require 'Ball'
require 'Powerup'

--entity array we're going through each frame
gameObjects = {}
gameObjectSize = 0

powerupTimer = 0


function love.load()

	love.graphics.setDefaultFilter('nearest', 'nearest')
	love.window.setTitle('Clodial Pong')
	math.randomseed(os.time())

	--Font related boilerplate
	smallFont = love.graphics.newFont(GAME_FONT, FONT_SMALL)
	medFont = love.graphics.newFont(GAME_FONT, FONT_MED)
	largeFont = love.graphics.newFont(GAME_FONT, FONT_LARGE)
	powerupImage = love.graphics.newImage(POWERUP_IMAGE)
	love.graphics.setFont(smallFont)

	-- initialize window with virtual resolution
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })

end

function love.update(dt)

	if(gameObjectSize > 0) then
		for i=0, gameObjectSize do
			gameObjects[i]:update(dt)
		end
		
	end
end

function love.keypressed(key)
	
	-- Function for basic keypresses outside of gameloop

end

function love.draw()
end

--gameObjects array reference 
function collection(gameObjects)
	
	
end
