Player = Class("Player", Base)

-- KAYTRA TODO: SHOOT, PAUSE, Make these caps variables static variables
PLAYER_SIZE = 32
PLAYER_SPEED = 500
PLAYER_FIRERATE = 50

function Player:initialize()
	Base.initialize(self, 1, middleOfScreen(true, PLAYER_SIZE), middleOfScreen(false, PLAYER_SIZE) + 200, PLAYER_SIZE, PLAYER_SIZE, PLAYER_SPEED, 10)
	self.score = 0
	-- Setup TLbind controls
	self.binds, self.control = love.filesystem.load("libraries/TLbind.lua")()
	self.binds.keys = {w = "up", s = "down", a = "left", d = "right", [" "] = "shoot", escape = "pause"}
end

function Player:update(dt)
	self.binds:update()

	-- Player movement
	if (self.control.up) then
		if (self.y - (self.speed * dt) < 0) then
			self.y = 0
		else
			self.y = self.y - (self.speed * dt)
		end
	elseif (self.control.down) then
		if (self.y + (self.speed * dt) > (love.graphics.getHeight() - self.height)) then
			self.y = love.graphics.getHeight() - self.height
		else
			self.y = self.y + (self.speed * dt)
		end
	end

	if (self.control.left) then
		if (self.x - (self.speed * dt) < 0) then
			self.x = 0
		else
			self.x = self.x - (self.speed * dt)
		end
	elseif (self.control.right) then
		if (self.x + (self.speed * dt) > (love.graphics.getWidth() - self.width)) then
			self.x = love.graphics.getWidth() - self.width
		else
			self.x = self.x + (self.speed * dt)
		end
	end

	-- Shoot
	if (self.control.shoot) then
		-- KAYTRA TODO: Create bullet (playerx, playery, bulletspeed)
	end
end

function Player:draw()
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Player:getScore()
	return self.score
end

function Player:setScore(newScore)
	self.score = newScore
end
