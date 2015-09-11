Class = require "libraries.middleclass" -- Include the Middleclass system
Room = 0

function love.load()
	-- Load the classes
	require "classes.base"
	require "classes.button"
	o = Button(0, 10, 10, "hello", function() print "hi" end)
end

function love.draw()
	o:draw()
end

function love.update(dt)

end
