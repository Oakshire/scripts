--[[
	Script Name		:	ItemScripts/awellspringcubleash.lua
	Script Purpose	:	Leash used in quest "To Draw Upon Wellsprings"
	Script Author	:	Cynnar
	Script Date		:	1/4/2016
	Script Notes	:	a Wellspring Cub Leash (Item ID = 45117) To Draw Upon Wellsprings (quest ID = 156)
--]]

local DrawUponWellsprings = 155

function used(Item, Player)
    target = GetTarget(Player)
	if GetName(target) == 'a wellspring cub' and GetTempVariable(Player, "cub") == nil then
		if not IsInCombat(target) then
			CastEntityCommand(Player, target, 1278, "Leash")
		end
	elseif GetName(target) == 'a wellspring cub' and GetTempVariable(Player, "cub") ~= nil then
	    SendMessage(Player, "You need to bring your currently leashed wellspring cub back to Calnozz before leashing another.", "yellow")
    elseif GetName(target) ~= "a wellspring cub" then
        SendMessage(Player, "You can only use this on a wellspring cub.", "yellow")
	end
end