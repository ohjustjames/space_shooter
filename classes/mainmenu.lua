MainMenu = Class("MainMenu", Base)

function MainMenu:initialize()
	Base.initialize(self, 0, 0, 0, 0, 0, 0, 1)
	StartButton = Button(0, 10, 10, "Start Game", function() --[[TODO: Start Game]] end)
end

function MainMenu:update(dt)
	StartButton:update(dt)
end

function MainMenu:draw()
	StartButton:draw()
end

function MainMenu:mousereleased(x, y, b)
	StartButton:mousereleased(x, y, b)
end
