local class = require("libs/middleclass")

-- importing the composer and scene class
require("libs/Composer")
require("libs/Scene")


Start = Scene:subclass("Start")

function Start:initialize()
	Scene.initialize(self, "Start")
end


function Start:update(dt)


end


function Start:draw()
	love.graphics.print("LD53 - Press space to start?!")
end

-- if there is another scene than this one going to be shown, then this function
-- will automatically be called by the composer
-- so code to make this scene ready to be hidden goes here
-- eg. stop playing sounds etc...
function Start:hide()
end


-- Creating a new instance
-- this can be called everywhere as long as it is legit to love
Start:new()