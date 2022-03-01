--[[
        Script Name     :       SpawnScripts/Frostfell/adrakerfly55312.lua
	Script Purpose  :	Waypoint Path for adrakerfly55312.lua
	Script Author	:	Rylec
	Script Date	:	12-12-2019 07:17:18 
	Script Notes	:	Script based on Verus Caldus (West Freeport patrolling guard)
--]]

function spawn(NPC)
    AddTimer(NPC, 900, "FollowUnicorn")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function FollowUnicorn(NPC)
    local zone = GetZone(NPC)
    local unicorn_location = GetSpawnByLocationID(zone, 55322)
    
    local leaderX = GetX(unicorn_location)
    local leaderY = GetY(unicorn_location)
    local leaderZ = GetZ(unicorn_location)
    local speed = 2

    local randdistance = math.random(1,10)
    local randX = math.random(1,3)
    local randY = math.random(1,3)
    local randZ = math.random(1,3)

    -- Say(NPC, "Random number: " .. randdistance .. "")
    
  
        if GetDistance(NPC, unicorn_location) >= randdistance then
		speed = 5
                MoveToLocation(NPC, leaderX - randX, leaderY + randY, leaderZ - randZ, speed)
	    else
		     speed = 2
		     MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
	end 
    
    speed = 2
    AddTimer(NPC, 3000, "FollowUnicorn")	
end
