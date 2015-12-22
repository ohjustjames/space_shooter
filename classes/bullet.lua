Bullet = Class("Bullet", Base)

BULLET_SIZE = 10

function Bullet:initialize(x, y, speed)
	Base.initialize(self, 1, x, y, BULLET_SIZE, BULLET_SIZE, speed, 1)
end

function Bullet:update(dt)
	-- Move up and destroy bullets that are outside of the room
	if (self.y < 0) then
		self:setActive(false)
	else
		self.y = self.y - (self.speed * dt)
	end
end

function Bullet:draw()
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
