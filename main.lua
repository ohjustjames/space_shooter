Class = require "libraries.middleclass" -- Include the Middleclass system
Room = 0
Objects = {}

function love.load()
	-- Load the classes
	require "classes.base"
	require "classes.button"
	require "classes.mainmenu"
	Objects["rooms"] = {}
	table.insert(Objects["rooms"], MainMenu())
end

function love.update(dt)
	for ci, category in pairs(Objects) do
		for oi, obj in pairs(category) do
			if (obj:getActive()) then
				if (obj:getRoom() == Room) then
					if (obj.update) then obj:update(dt) end
				else
					obj:setActive(false) -- Deactivate un-needed objects
				end
			else
				-- Remove deactivated objects
				table.remove(category, oi)
			end
		end
	end
end

function love.draw()
	for ci, category in pairs(Objects) do
		for oi, obj in pairs(category) do
			if (obj:getRoom() == Room) then
				if (obj.draw) then obj:draw() end
			end
		end
	end
end

function love.mousereleased(x, y, button)
	for ci, category in pairs(Objects) do
		for oi, obj in pairs(category) do
			if (obj:getRoom() == Room) then
				if (obj.mousereleased) then obj:mousereleased(x, y, button) end
			end
		end
	end
end
