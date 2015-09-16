-- functions that come in handy

-- Returns the position that would center an object on-screen. checks either the screen width or height
function middleOfScreen(checkWidth, size)
	if (checkWidth) then 
		return (love.graphics.getWidth() / 2) - (size / 2)
	else
		return (love.graphics.getHeight() / 2) - (size / 2)
	end
end

-- Collision detection function.
-- Returns true if two boxes overlap, false if they don't
-- x1,y1 are the left-top coords of the first box, while w1,h1 are its width and height
-- x2,y2,w2 & h2 are the same, but for the second box
function checkCollision(x1,y1,w1,h1, x2,y2,w2,h2)
  return x1 < x2+w2 and
         x2 < x1+w1 and
         y1 < y2+h2 and
         y2 < y1+h1
end

