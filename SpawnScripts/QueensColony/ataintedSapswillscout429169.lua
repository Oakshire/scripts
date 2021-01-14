--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout429169.lua
	Script Purpose	:	Follow script for ataintedSapswillscout429169.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:08:43 
	Script Notes	:	Follow script
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "4")        
        SpawnSet(NPC, "difficulty", "5") 
        SpawnSet(NPC, "size", "32") 
	AddTimer(NPC, 800, "followmorak")      
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function followmorak(NPC)
	local zone = GetZone(NPC)
	local morak_location = GetSpawnByLocationID(zone, 428734)

        local leaderX = GetX(morak_location)
        local leaderY = GetY(morak_location)
        local leaderZ = GetZ(morak_location)
        local speed = 2
    
	if GetDistance(NPC, morak_location) >= 2 then
		speed = 2
                MoveToLocation(NPC, leaderX, leaderY, leaderZ, speed)
	end 
	AddTimer(NPC, 1500, "followmorak")	
end