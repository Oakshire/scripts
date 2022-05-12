--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout429236.lua
	Script Purpose	:	Follow script for ataintedSapswillscout429236.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:08:43 
	Script Notes	:	Follow script
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3")        
        SpawnSet(NPC, "difficulty", "5")
        SpawnSet(NPC, "hp", 45)
        SpawnSet(NPC, "power", 30)
        SpawnSet(NPC, "size", "32") 
	AddTimer(NPC, 600, "followmorak")      
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function followmorak(NPC)
	local zone = GetZone(NPC)
	local morak_location = GetSpawnByLocationID(zone, 428683)

        local leaderX = GetX(morak_location)
        local leaderY = GetY(morak_location)
        local leaderZ = GetZ(morak_location)
        local speed = 2
    
	if GetDistance(NPC, morak_location) >= 1 then
		speed = 2
                MoveToLocation(NPC, leaderX, leaderY, leaderZ, speed)
	end 

	AddTimer(NPC, 900, "followmorak")	
end
