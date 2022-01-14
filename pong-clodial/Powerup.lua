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
	self.image = image
	print("created  powerup")
end

function Powerup:update(dt)
	self.ttlInit = self.ttlInit + 1
	if self.ttl == self.ttlInit then
		self.live = false
	end
end


function Powerup:render()
	love.graphics.draw(self.image, 0,0)
end