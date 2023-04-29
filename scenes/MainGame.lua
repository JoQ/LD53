local class = require("libs/middleclass")

require("libs/Composer")
require("libs/Scene")

require '../game'

MainGame = Scene:subclass("MainGame")


function MainGame:initialize()
	Scene.initialize(self, "MainGame")
	game = Game:new()
end


function MainGame:update(dt)
	game:update(dt)
end


function MainGame:draw()
	game:draw()
end

-- if there is another scene than this one going to be shown, then this function
-- will automatically be called by the composer
-- so code to make this scene ready to be hidden goes here
-- eg. stop playing sounds etc...
function MainGame:hide()
end






-- Creating a new instance
-- this can be called everywhere as long as it is legit to love
MainGame:new()