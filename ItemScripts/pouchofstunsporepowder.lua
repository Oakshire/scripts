--[[
	Script Name		:	ItemScripts/pouchofstunsporepowder.lua
	Script Purpose	:	clickable used in quest "Dust to Dust"
	Script Author	:	fearfx
	Script Date		:	21 Jan 2017
	Script Notes	:	Pouch of Stunspore Powder (Item ID = 47613) used in Dust to Dust (quest ID = 158)
	                    Temp spell in here until Stunspore Paralysis is added to DB
--]]

local DustToDust = 158

function used(Item, Player)
    local target = GetTarget(Player)
    local zone = GetZone(Player)
    if GetZoneID(zone) == 34 and GetRace(target) == 9 and GetTempVariable(target, "stunned") == nil and GetDistance(target, Player, 0) < 6 then
        CastSpell(target, 270086, 1, Player)
        AddStepProgress(Player, 158, 1, 1)
        SetTempVariable(target, "stunned", "1")
    elseif GetRace(target) ~= 9 then
        SendMessage(Player, "This item may only be used on a skeleton.", "yellow")
    elseif GetTempVariable(target, "stunned") ~= nil then
        SendMessage(Player, "This item can only be used once per target.", "yellow")
    elseif GetDistance(target, Player, 0) > 6 then
        SendMessage(Player, "Move closer to your target.", "yellow")
    else
        Say(Player, "Error... Please report to Dev team.")
    end
end