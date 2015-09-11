Button = Class("Button", Base)

-- ToDo: Make the button clickable

BUTTON_WIDTH = 120
BUTTON_HEIGHT = 50
BUTTON_TEXT_SIZE = 12
buttonFont = love.graphics.newFont(BUTTON_TEXT_SIzE)

function Button:initialize(room, x, y, text, operation)
	Base.initialize(self, room, x, y, BUTTON_WIDTH, BUTTON_HEIGHT, 0, 1)
	self.text = text
	self.operation = operation
	self.colour = {0, 0, 255}
	self.textcolour = {255, 255, 255}
end

function Button:draw()
	love.graphics.setColor(self.colour)
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)

	love.graphics.setColor(self.textcolour)
	love.graphics.setFont(buttonFont)
	love.graphics.printf(self.text, self.x, self.y + ((self.height / 2)-(BUTTON_TEXT_SIZE / 2)), self.width, "center")
end