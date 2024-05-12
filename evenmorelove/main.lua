_G.love = require("love")

local Player = require("Player")

function love.load()
	love.mouse.setVisible(false)
	_G.mouse_x, _G.mouse_y = 0, 0

	local show_debugging = true

	_G.player = Player(show_debugging)
end

function love.keypressed(key)
	if key == "w" or key == "up" then
		player.thrusting = true
	end
end

function love.update()
	_G.mouse_x, _G.mouse_y = love.mouse.getPosition()

	player:move_player()
end

function love.draw()
	player:draw()
end
