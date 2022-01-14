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
	gameObjectSize = 1
	gameObjects[1] = Powerup(200,100,32,32,powerupImage)
end

function love.update(dt)

	if(gameObjectSize > 0) then
		for i=1, gameObjectSize do
			gameObjects[i]:update(dt)
		end
		garbageCollection(gameObjects)
	end

end

function love.keypressed(key)
	
	-- Function for basic keypresses outside of gameloop

end

function love.draw()
	--testing purposes for external pngs
	--love.graphics.draw(powerupImage,0,0) --uncomment for basic image test
	if(gameObjectSize > 0) then
		for i=1, gameObjectSize do
			gameObjects[i]:render()
		end
	end
end

--gameObjects array reference 
function garbageCollection(gameObjects)
	
	if gameObjectSize > 0 then
		for i=1, gameObjectSize do
			if(gameObjects[i].live == false) then
				table.remove(gameObjects, i)
				gameObjectSize = gameObjectSize - 1
			end
		end
	end
	collectgarbage("collect")
end