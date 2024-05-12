local love = require("love")

function Button(text, func, func_param, width, height)
	return {
		width = width or 100,
		height = height or 100,
		func = func or function()
			print("This btn has no func attached.")
		end,
		func_param = func_param,
		text = text or "No text",
		btn_x = 0,
		btn_y = 0,
		text_x = 0,
		text_y = 0,

		checkpress = function(self, mouse_x, mouse_y, cursor_radius)
			if (mouse_x + cursor_radius >= self.btn_x) and (mouse_x - cursor_radius <= self.btn_x + self.width) then
				if
					(mouse_y + cursor_radius >= self.btn_y) and (mouse_y - cursor_radius <= self.btn_y + self.height)
				then
					if self.func_param then
						self.func(self.func_param)
					else
						self.func()
					end
				end
			end
		end,

		-- pozice btn je mozne predat uz v parametrech Button funkce,
		-- ale takto je mozne je menit i po vytvoreni Button objektu pro pripadne dalsi animace
		draw = function(self, btn_x, btn_y, text_x, text_y)
			self.btn_x = btn_x or self.btn_x
			self.btn_y = btn_y or self.btn_y

			if text_x then
				self.text_x = text_x + self.btn_x
			else
				self.text_x = self.btn_x
			end

			if text_y then
				self.text_y = text_y + self.btn_y
			else
				self.text_y = self.btn_y
			end

			love.graphics.setColor(0.6, 0.6, 0.6)
			love.graphics.rectangle("fill", self.btn_x, self.btn_y, self.width, self.height)

			love.graphics.setColor(0, 0, 0)
			love.graphics.print(self.text, self.text_x, self.text_y)

			love.graphics.setColor(1, 1, 1)
		end,
	}
end

return Button
