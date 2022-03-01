--[[
	Script Name		:	ItemScripts/FrostfellCandle.lua
	Script Purpose	:	
	Script Author	:	vo1d
	Script Date		:	10/29/2019
	Script Notes	:	
--]]


function spawn_timer(Item, Spawn)
    Say(Spawn, "spawn timer function called")
    local thisZone = GetZone(Spawn)
    SpawnMob(thisZone, 4730007, false, -236, -128, 488, 0)
end