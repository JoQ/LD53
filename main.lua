-------------------------------------------------
-- PH-name #LD53
-- Website: http://jksoft.se
-- Licence: ZLIB/libpng
-- Copyright (c) JKsoft
-------------------------------------------------
require 'settings'

require("libs/Composer")
require("libs/Scene")

require("scenes/Start")
require("scenes/MainGame")
require("scenes/Esc")

-- Reference to the composer
local composer

function love.load()
  love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {resizable=false, vsync=false, minwidth=800, minheight=600})
  love.window.setTitle("LD53 (PeatUno) - PH-name")
	-- creating a new composer object
	composer = Composer:new()
	-- set the scene to go to
	composer:goToScene("Start")
end


function love.update(dt)
	-- update the current scene
	composer:updateCurrentScene(dt)
end


function love.draw()
	-- draw the current scene
	composer:drawCurrentScene()
end

-- change scene when hitting space bar
function love.keyreleased(key)
	if key == "space" then
		if composer:currentSceneName() == "Start" then
			composer:goToScene("MainGame")
		end
  elseif key == "escape" then
    if composer:currentSceneName() == "MainGame" then
      composer:goToScene("Esc")
    elseif composer:currentSceneName() == "Esc" then
      composer:goToScene("MainGame")
    end
  end
end