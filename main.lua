Class = require "libraries.middleclass" -- Include the Middleclass system
Room = 0

function love.load()
	-- Load the classes
	require "classes.base"
	require "classes.button"
	o = Button(0, 10, 10, "hello", function(self) self.colour={255,0, 0} end)
end

function love.draw()
	o:draw()
end

function love.update(dt)
	o:update(dt)
end

function love.mousereleased(x, y, button)
	o:mousereleased(x, y, button)
end
