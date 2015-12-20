Base = Class("Base")
--[[
--	Base.initialize
--	Room - The room that the object is allowed to exist in
--	X - The X position that the object starts in
--	Y - The Y position that the object starts in
--	Width - The width of the object
--	Height - The height of the object
--	speed - The speed that the object moves at
--	Health - The health of the object
--]]

-- KAYTRA TODO: Base objects should be able to shoot
function Base:initialize(room, x, y, width, height, speed, health, facingNorth)
	self.active = true -- The object is destroyed if this is false

	self.room = room
	self.x = x
	self.y = y
	self.width = width
	self.height = height
	self.speed = speed
	self.health = health
	self.maxHealth = health
	self.facingNorth = facingNorth
	self.canShoot = false
end

function Base:draw()
	-- Draw the object as a rectangle by default
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Base:getActive()
	return self.active
end

function Base:setActive(active)
	self.active = active
end

function Base:getRoom()
	return self.room
end

function Base:shoot()
	if (self.canShoot) then
		-- KAYTRA TODO: Create bullet instance
	end
end
