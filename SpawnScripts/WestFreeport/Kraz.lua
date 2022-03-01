--[[
	Script Name		:	SpawnScripts/WestFreeport/Kraz.lua
	Script Purpose	:	Waypoint follw Path to Barron Narrog Bloodgulper in West Freeport
	Script Author	:	Cynnar
	Script Date		:	01/19/2019 02:23:28 PM
	Script Notes	:	Barron Narrog Bloodgulper and Kruz
--]]

function spawn(NPC)
	AddTimer(NPC, 900, "follow_Barron")
end

function respawn(NPC)
	spawn(NPC)
end

function follow_Barron(NPC)
	local zone = GetZone(NPC)
	local Barron_location = GetSpawnByLocationID(zone, 407149)
	local sli = GetSpawnLocationID(NPC)
    local leaderX = GetX(Barron_location)
    local leaderY = GetY(Barron_location)
    local leaderZ = GetZ(Barron_location)
    local speed = 2
       -- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. ", " .. GetY(guard_A_placement) .. ", " .. GetZ(guard_A_placement))
    
    if sli == 407115 then
		if GetDistance(NPC, Barron_location) >= 8 then
			speed = 5
			MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
		else
			speed = 2
			MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
		end 
	elseif sli == 407155 then
		if GetDistance(NPC, Barron_location) >= 8 then
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
	AddTimer(NPC, 3000, "follow_Barron")	
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

