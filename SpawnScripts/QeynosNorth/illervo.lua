--[[
	Script Name		:	illervo.lua
	Script Purpose	:	Waypoint Path for illervo.lua
	Script Author	:	Devn00b
	Script Date		:	04/15/2020 05:24:14 PM
	Script Notes	:	Locations collected from Live
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")


function spawn(NPC)
	AddTimer(NPC, 1900, "follow_Icebear")
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
    NonCitizen(NPC,Spawn)    
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11)<0 then
        else
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC,Spawn)
    end
end

function respawn(NPC)
spawn(NPC)
end


function follow_Icebear(NPC)
	local zone = GetZone(NPC)
	local Icebear_location = GetSpawnByLocationID(zone, 379862)
	local sli = GetSpawnLocationID(NPC)
    local leaderX = GetX(Icebear_location)
    local leaderY = GetY(Icebear_location)
    local leaderZ = GetZ(Icebear_location)
    local speed = 2
       -- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. ", " .. GetY(guard_A_placement) .. ", " .. GetZ(guard_A_placement))
    if  Icebear_location ~=nil then   
    if sli == 379841 then --Illervo
		if GetDistance(NPC, Icebear_location) >= 8 then
			speed = 5
			MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
		else
			speed = 2
			MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
		end 
	elseif sli == 379868 then --Milton
		if GetDistance(NPC, Icebear_location) >= 8 then
			-- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. "")
			-- Say(NPC, "My location is: " .. GetX(NPC) .. "")
			speed = 5
			MoveToLocation(NPC, leaderX, leaderY, 3+ leaderZ, speed)
		else
			speed = 2
			MoveToLocation(NPC, leaderX, leaderY, 3+ leaderZ, speed)
		end 
	elseif sli == 379822 then --Gyles
		if GetDistance(NPC, Icebear_location) >= 8 then
			-- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. "")
			-- Say(NPC, "My location is: " .. GetX(NPC) .. "")
			speed = 5
			MoveToLocation(NPC, leaderX, leaderY, leaderZ -3, speed)
		else
			speed = 2
			MoveToLocation(NPC, leaderX, leaderY, leaderZ -3, speed)
		end 
		end
    end
        speed = 2
	AddTimer(NPC, 2000, "follow_Icebear")	
end

--[[ICEBEAR PATROL
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 337.5, -21.62, -17.84, 2, 0)
	MovementLoopAddLocation(NPC, 327.95, -21.47, -18.3, 2, 0)
	MovementLoopAddLocation(NPC, 301.42, -21.15, 2.22, 2, 0)
	MovementLoopAddLocation(NPC, 307.82, -21.28, 12.39, 2, 0)
	MovementLoopAddLocation(NPC, 316.31, -21.35, 25.73, 2, 0)
	MovementLoopAddLocation(NPC, 328.54, -21.46, 34.69, 2, 0)
	MovementLoopAddLocation(NPC, 342.6, -21.08, 47.69, 2, 0)
	MovementLoopAddLocation(NPC, 351.56, -21.1, 62.44, 2, 0)
	MovementLoopAddLocation(NPC, 356.53, -20.81, 86.48, 2, 0)
	MovementLoopAddLocation(NPC, 365.55, -20.84, 100.34, 2, 0)
	MovementLoopAddLocation(NPC, 383.27, -20.98, 123.01, 2, 0)
	MovementLoopAddLocation(NPC, 391.04, -21.3, 133.4, 2, 0)
	MovementLoopAddLocation(NPC, 386.84, -20.7, 119.23, 2, 0)
	MovementLoopAddLocation(NPC, 412.2, -13.89, 65.74, 2, 0)
	MovementLoopAddLocation(NPC, 409.82, -13.77, 57.53, 2, 0)
	MovementLoopAddLocation(NPC, 400.59, -14.47, 33.02, 2, 0)
	MovementLoopAddLocation(NPC, 393.11, -15.81, 12.92, 2, 0)
	MovementLoopAddLocation(NPC, 393.69, -17.09, -23.72, 2, 0)
	MovementLoopAddLocation(NPC, 369.04, -20.37, -19.09, 2, 0)
	MovementLoopAddLocation(NPC, 338.76, -21.66, -18.13, 2, 0)
end
]]--



