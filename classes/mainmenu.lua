MainMenu = Class("MainMenu", Base)

function MainMenu:initialize()
	Base.initialize(self, 0, 0, 0, 0, 0, 0, 1)
	StartButton = Button(0, 10, 10, "Start Game", function() newGame() end)
	QuitButton = Button(0, 10, 75, "Quit Game", function() --[[TODO: Quit Game]] end)
end

function MainMenu:update(dt)
	StartButton:update(dt)
	QuitButton:update(dt)
end

function MainMenu:draw()
	StartButton:draw()
	QuitButton:draw()
end

function MainMenu:mousepressed(x, y, b)
	StartButton:mousepressed(x, y, b)
	QuitButton:mousepressed(x, y, b)
end

function MainMenu:mousereleased(x, y, b)
	StartButton:mousereleased(x, y, b)
	QuitButton:mousereleased(x, y, b)
end
