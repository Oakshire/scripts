--[[
	Script Name		:	raleigh.lua
	Script Purpose	:	Waypoint Path for raleigh.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 06:51:30 PM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")

function spawn(NPC)
	AddTimer(NPC, 1900, "follow_Raleigh")
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


function follow_Raleigh(NPC)
	local zone = GetZone(NPC)
	local Raleigh_location = GetSpawnByLocationID(zone, 415331)
	local sli = GetSpawnLocationID(NPC)
    local leaderX = GetX(Raleigh_location)
    local leaderY = GetY(Raleigh_location)
    local leaderZ = GetZ(Raleigh_location)
    local speed = 2
       -- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. ", " .. GetY(guard_A_placement) .. ", " .. GetZ(guard_A_placement))
    if  Raleigh_location ~=nil then   
    if sli == 415322 then --Lanalie
		if GetDistance(NPC, Raleigh_location) >= 8 then
			speed = 5
			MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
		else
			speed = 2
			MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
		end 
	elseif sli == 415313 then --Stanhyl
		if GetDistance(NPC, Raleigh_location) >= 8 then
			-- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. "")
			-- Say(NPC, "My location is: " .. GetX(NPC) .. "")
			speed = 5
			MoveToLocation(NPC, leaderX, leaderY, 2+ leaderZ, speed)
		else
			speed = 2
			MoveToLocation(NPC, leaderX, leaderY, 2+ leaderZ, speed)
		end 
        end
    end
        speed = 2
	AddTimer(NPC, 2000, "follow_Raleigh")	
end

--[[Raleigh's Patrol
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 518.13, -10.48, 148.06, 2, 1.5)
	MovementLoopAddLocation(NPC, 546.76, -10.58, 151.7, 2, 0)
	MovementLoopAddLocation(NPC, 619.74, -12.25, 144.07, 2, 0)
	MovementLoopAddLocation(NPC, 621.1, -16.52, 201.22, 2, 0)
	MovementLoopAddLocation(NPC, 557.98, -15.36, 210.45, 2, 0)
	MovementLoopAddLocation(NPC, 558.15, -17.19, 232.88, 2, 0)
	MovementLoopAddLocation(NPC, 552.57, -17.74, 244.2, 2, 0)
	MovementLoopAddLocation(NPC, 503.12, -19.64, 242.37, 2, 0)
	MovementLoopAddLocation(NPC, 459.61, -22.15, 233.9, 2, 0)
	MovementLoopAddLocation(NPC, 457.36, -21.39, 226.69, 2, 0)
	MovementLoopAddLocation(NPC, 471.92, -20.75, 189.58, 2, 0)
	MovementLoopAddLocation(NPC, 485.11, -14.58, 159.08, 2, 0)
	MovementLoopAddLocation(NPC, 494.06, -11.84, 144.74, 2, 0)
	MovementLoopAddLocation(NPC, 514.53, -10.6, 147.01, 2, 0)
	MovementLoopAddLocation(NPC, 546.4, -10.57, 151.35, 2, 0)
	MovementLoopAddLocation(NPC, 546.6, -14.95, 189.7, 2, 0)
	MovementLoopAddLocation(NPC, 546.4, -10.57, 151.35, 2, 0)
	MovementLoopAddLocation(NPC, 514.53, -10.6, 147.01, 2, 0)
	MovementLoopAddLocation(NPC, 494.06, -11.84, 144.74, 2, 0)
	MovementLoopAddLocation(NPC, 485.11, -14.58, 159.08, 2, 0)
	MovementLoopAddLocation(NPC, 471.92, -20.75, 189.58, 2, 0)
	MovementLoopAddLocation(NPC, 457.36, -21.39, 226.69, 2, 0)
	MovementLoopAddLocation(NPC, 459.61, -22.15, 233.9, 2, 0)
	MovementLoopAddLocation(NPC, 503.12, -19.64, 242.37, 2, 0)
	MovementLoopAddLocation(NPC, 552.57, -17.74, 244.2, 2, 0)
	MovementLoopAddLocation(NPC, 558.15, -17.19, 232.88, 2, 0)
	MovementLoopAddLocation(NPC, 557.98, -15.36, 210.45, 2, 0)
	MovementLoopAddLocation(NPC, 621.1, -16.52, 201.22, 2, 0)
	MovementLoopAddLocation(NPC, 619.74, -12.25, 144.07, 2, 0)
	MovementLoopAddLocation(NPC, 546.76, -10.58, 151.7, 2, 0)
	MovementLoopAddLocation(NPC, 518.13, -10.48, 148.06, 2, 0)
end
]]--

