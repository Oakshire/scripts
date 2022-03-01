--[[
	Script Name		:	ItemScripts/SpiritReaper.lua
	Script Purpose	:	Spirit Reaper used in quest "Reaping"
	Script Author	:	Cynnar
	Script Date		:	1/4/2016
	Script Notes	:	Spirit Reaper (Item ID = 48173) Reaping (quest ID = 152)
--]]

local Reaping = 152

function used(Item, Player)
    if GetQuestStep(Player, Reaping) == 1 then
	    target = GetTarget(Player)
		if GetName(target) == 'a pure spirit' then
			   CastEntityCommand(Player, target, 1312, "Reap")
		end
	end
end