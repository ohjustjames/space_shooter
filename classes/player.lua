Player = Class("Player", Base)

PLAYER_SIZE = 32

function Player:initialize()
	Base.initialize(self, 1, middleOfScreen(true, PLAYER_SIZE), middleOfScreen(false, PLAYER_SIZE) + 200, PLAYER_SIZE, PLAYER_SIZE, PLAYER_SPEED, 10)
end

function Player:update(dt)
end

function Player:draw()
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Player:getScore()
end

function Player:setScore()
end
