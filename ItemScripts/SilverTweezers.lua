--[[
	Script Name		:	ItemScripts/SilverTweezers.lua
	Script Purpose	:	
	Script Author	:	Jabantiz
	Script Date		:	6/23/2018
	Script Notes	:	
--]]

function used(Item, Player)
	local target = GetTarget(Player)
	if target ~= nil then
		local model = GetModelType(target)
		if model == 81 or model == 82 or model == 91 or model == 93 or model == 94 or model == 95 or model == 96 or model == 97 or model == 98 or model == 99 or model == 100 or model == 101 or model == 102 then
			CastSpell(target, 2550000, 1, Player)
		end
	end
end