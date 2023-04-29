class    = require 'libs/middleclass'

require 'settings'

local Talkies = require('libs/talkies')

local k = love.keyboard

Game = class('Game')

function Game:initialize()
  bg = love.graphics.newImage("assets/bg.png")
  
  tutdone = false

  Talkies.say(
    "Welcome to your new job!",
    "Lorem ipsum.. and so on?!",
    { textSpeed = "slow", image=bg }
  )
  Talkies.say(
    "Welcome to your new job!",
    "What is your name?",
    {
      options={
        {"Sven", function() Sven() end},
        {"Inga", function() Inga() end},
        {"Non of the above", function() NonAbove() end}
      },
      image=bg
    }
  )

end


function Sven()
  Talkies.say(
    "Welcome to your new job!",
    "Hey Sven! .. I will just call you dispatcher tho..",
    { textSpeed = "slow", image=bg }
  )
  Tutorial()
end
function Inga()
  Talkies.say(
    "Welcome to your new job!",
    "Hey Inga! .. I will just call you dispatcher tho..",
    { textSpeed = "slow", image=bg }
  )
  Tutorial()
end
function NonAbove()
  Talkies.say(
    "Welcome to your new job!",
    "Hey Non of the above! .. I will just call you dispatcher tho..",
    { textSpeed = "slow", image=bg }
  )
  Tutorial()
end
function Tutorial()
  Talkies.say(
    "Welcome to your new job!",
    "Okey dispatcher, time to get to work! Click the orders that pops up on the map and then dispatch a grabber (your are free to call the underpaid workers whatever you want, as long as you don't mention anything related to unions!), you might have to solve some other problems aswell.. But you will get the hang of it!",
    { textSpeed = "slow", image=bg }
  )
  tutdone = true
end

function Game:update(dt)
  Talkies.update(dt)

  if tutdone then
    --Tutorial done.. spawn customer and orders!


  end

end

function Game:draw()
  Talkies.draw()
  

end

function love.keypressed(key)
  if key == "space" then Talkies.onAction()
  elseif key == "up" then Talkies.prevOption()
  elseif key == "down" then Talkies.nextOption()
  end
end