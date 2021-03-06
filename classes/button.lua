Button = Class("Button", Base)

--[[
--	Button.initialize
--	Room - The room that the object is allowed to exist in
--	X - The X position of the Button
--	Y - The Y position of the button
--	Text - The text that appears in the center of the button
--	Operation - The function that is executed when the button is clicked
--]]

-- Button constants
BUTTON_WIDTH = 120
BUTTON_HEIGHT = 50
BUTTON_TEXT_SIZE = 12
BUTTON_FONT = love.graphics.newFont(BUTTON_TEXT_SIZE)
BUTTON_FLASH_DURATION = 0.1
BUTTON_FLASH_COLOUR = {0, 255, 0}
BUTTON_COLOUR = {0, 0, 255}

function Button:initialize(room, x, y, text, operation)
	Base.initialize(self, room, x, y, BUTTON_WIDTH, BUTTON_HEIGHT, 0, 1)
	self.text = text
	self.operation = operation
	self.colour = BUTTON_COLOUR
	self.textcolour = {255, 255, 255}
	self.clicked = false
end

function Button:update(dt)
	-- Make the button flash when clicked
	if (self.clicked) then
		self.colour = BUTTON_FLASH_COLOUR
	else
		self.colour = BUTTON_COLOUR
	end
end

function Button:draw()
	love.graphics.setColor(self.colour)
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)

	love.graphics.setColor(self.textcolour)
	love.graphics.setFont(BUTTON_FONT)
	love.graphics.printf(self.text, self.x, self.y + ((self.height / 2)-(BUTTON_TEXT_SIZE / 2)), self.width, "center")
end

function Button:mousepressed(x, y, button)
	if (x > self.x and x < (self.x + self.width) and y > self.y and y < (self.y + self.height)) then
		self.clicktimer = BUTTON_FLASH_DURATION
		self.clicked = true
	end
end

function Button:mousereleased(x, y, button)
	if (self.clicked) then
		if (x > self.x and x < (self.x + self.width) and y > self.y and y < (self.y + self.height)) then
			self:operation()
		end
		self.clicked = false
	end
end
