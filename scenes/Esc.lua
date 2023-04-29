local class = require("libs/middleclass")

-- importing the composer and scene class
require("libs/Composer")
require("libs/Scene")


Esc = Scene:subclass("Esc")

function Esc:initialize()
	Scene.initialize(self, "Esc")
end


function Esc:update(dt)


end


function Esc:draw()
	love.graphics.print("Escape meny här..")
end

-- if there is another scene than this one going to be shown, then this function
-- will automatically be called by the composer
-- so code to make this scene ready to be hidden goes here
-- eg. stop playing sounds etc...
function Esc:hide()
end


-- Creating a new instance
-- this can be called everywhere as long as it is legit to love
Esc:new()