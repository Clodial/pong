--[[

	Powerup GameObject

]]

--main GameObject class
Player = require 'Player'

Powerup = Class{}

function Powerup:init(x, y, width, height, image)
	self.x = x
	self.y = y
	self.width = width
	self.height = height
	self.ttl = 200
	self.ttlInit = 0
	self.live = true
end

function Powerup:update(dt)
	ttlinit = ttlinit + 1
	if ttl == ttlInit then 
		self.live = false
	end
end


function Powerup:render()
	love.graphics.draw(image)
end