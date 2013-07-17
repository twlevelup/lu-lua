require 'input'
require 'player'

local entities = {}
local player = Player()

function love.load()
    table.insert(entities, player)
    love.input.bind('up', 'up')
end

function love.update()
    for _, e in pairs(entities) do
        e.update(love.input)
    end
end

function love.draw()
    for _, e in pairs(entities) do
        e.draw(love.graphics)
    end
end
