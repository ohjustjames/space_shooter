Base = Class("Base")
--[[
--	Base.initialize
--	Room - The room that the object is updated and drawn in
--	X - The X position that the object starts in
--	Y - The Y position that the object starts in
--	speed - The speed that the object moves at
--	Health - The health of the object
--]]
function Base:initialize(room, x, y, width, height, speed, health)
	self.active = true -- The object is destroyed if this is false

	self.room = room
	self.x = x
	self.y = y
	self.width = width
	self.height = height
	self.speed = speed
	self.health = health
	self.maxHealth = health
end

function Base:draw()
	-- Draw the object as a rectangle by default
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Base:getInactive()
	if (self.active == false) then
		return true
	else
		return false
	end
end

function Base:setActive(active)
	self.active = active
end

function Base:deactivate()
	self.active = false
end

function Base:getRoom()
	return self.room
end

