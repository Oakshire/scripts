--[[
	Script Name		:	Patrol_Follow_Panilia.lua
	Script Purpose	:	Waypoint follw Path to Panilia L`Un in West Freeport
	Script Author	:	Cynnar
	Script Date		:	01/19/2019 02:23:28 PM
	Script Notes	:	Verus Caldus and Desia
--]]

function spawn(NPC)
	AddTimer(NPC, 900, "follow_Panilia")
end

function respawn(NPC)
	spawn(NPC)
end

function follow_Panilia(NPC)
	local zone = GetZone(NPC)
	local Panilia_location = GetSpawnByLocationID(zone, 407347)
	local sli = GetSpawnLocationID(NPC)
    local leaderX = GetX(Panilia_location)
    local leaderY = GetY(Panilia_location)
    local leaderZ = GetZ(Panilia_location)
    local speed = 2
       -- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. ", " .. GetY(guard_A_placement) .. ", " .. GetZ(guard_A_placement))
    
    if sli == 407362 then
		if GetDistance(NPC, Panilia_location) >= 8 then
			speed = 5
			MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
		else
			speed = 2
			MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
		end 
	elseif sli == 407375 then
		if GetDistance(NPC, Panilia_location) >= 8 then
			-- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. "")
			-- Say(NPC, "My location is: " .. GetX(NPC) .. "")
			speed = 5
			MoveToLocation(NPC, leaderX, leaderY, leaderZ - 2, speed)
		else
			speed = 2
			MoveToLocation(NPC, leaderX, leaderY, leaderZ - 2, speed)
		end 
    end
        speed = 2
	AddTimer(NPC, 3000, "follow_Panilia")	
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end