Class = require "libraries.middleclass" -- Include the Middleclass system
Room = 0

function love.load()
	-- Load the classes
	require "classes.base"
	require "classes.button"
	require "classes.mainmenu"
	m = MainMenu()
end

function love.draw()
	m:draw()
end

function love.update(dt)
	m:update(dt)
end

function love.mousereleased(x, y, button)
	m:mousereleased(x, y, button)
end
