--[[
    Script Name    : SpawnScripts/IsleRefuge1/awarwolf4.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.14 04:09:01
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

AddTimer(NPC, 1000, "followsentry")      
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function followsentry(NPC)
	local zone = GetZone(NPC)
	local sentry_location = GetSpawnByLocationID(zone, 133775567)

        local leaderX = GetX(sentry_location)
        local leaderY = GetY(sentry_location)
        local leaderZ = GetZ(sentry_location)
        local speed = 2
    if  sentry_location ~=nil and not IsInCombat(NPC) then   
	if GetDistance(NPC, sentry_location) >= 2 then
		speed = 2
                MoveToLocation(NPC, leaderX, leaderY, leaderZ, speed)
	end 
	end
	AddTimer(NPC, 1500, "followsentry")	
end