--[[
	Script Name	: ZoneScripts/GMHall.lua
	Script Purpose	: Announce locations
	Script Author	: John Adams
	Script Date	: 2009.05.07 * 2019.01.15
	Script Notes	: GMHall General Script
--]]

function init_zone_script(Zone)
	SetLocationProximityFunction(Zone, 670, -36, 1490, 50, "GMHall_InRange")

end

function GMHall_InRange(Zone, Player)
	SendPopUpMessage(Player, "Welcome to the Game Masters' Hall", 244, 66, 134)
end