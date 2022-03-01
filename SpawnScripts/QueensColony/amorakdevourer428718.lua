--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer428718.lua
	Script Purpose	:	Follow script for amorakdevourer428718.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:08:43 
	Script Notes	:	Follow script
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3")
        SpawnSet(NPC, "difficulty", "2")        
        AddTimer(NPC, 2000, "FollowMorak")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function FollowMorak(NPC)
    local zone = GetZone(NPC)
    local morak_location = GetSpawnByLocationID(zone, 428699)
    
    local leaderX = GetX(morak_location)
    local leaderY = GetY(morak_location)
    local leaderZ = GetZ(morak_location)
    local speed = 2

    local randdistance = math.random(1,5)
    local randX = math.random(1,5)
    local randY = math.random(1,5)
    local randZ = math.random(1,5)

        if GetDistance(NPC, morak_location) >= randdistance then
                MoveToLocation(NPC, leaderX - randX, leaderY + randY, leaderZ - randZ, speed)
		    else
		     speed = 2
		     MoveToLocation(NPC, leaderX + 1, leaderY + 2, leaderZ - 1, speed)
	end 
   
    speed = 2
    AddTimer(NPC, math.random(3000,10000), "FollowMorak")	
end