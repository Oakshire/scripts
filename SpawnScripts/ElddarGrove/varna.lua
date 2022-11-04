--[[
	Script Name		:	varna.lua
	Script Purpose	:	Waypoint Path for varna.lua
	Script Author	:	Devn00b
	Script Date		:	07/31/2020 07:33:58 PM
	Script Notes	:	Dialogue updated 5.1.2022 Dorbin
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")

function spawn(NPC)
	AddTimer(NPC, 1900, "follow_Fanthis")
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
local Fanthis = GetSpawn(NPC,2070080)    
	if Fanthis ~=nil then
    FaceTarget(Fanthis,Spawn)
	PlayFlavor(Fanthis, "", "", "attention", 0, 0, Spawn)
    end	
GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC, Spawn)
    NonCitizen(NPC,Spawn)    
end

function respawn(NPC)
	spawn(NPC)
end


function follow_Fanthis(NPC)
	local zone = GetZone(NPC)
	local Fanthis_location = GetSpawnByLocationID(zone, 413146)
	local sli = GetSpawnLocationID(NPC)
    local leaderX = GetX(Fanthis_location)
    local leaderY = GetY(Fanthis_location)
    local leaderZ = GetZ(Fanthis_location)
    local speed = 2
       -- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. ", " .. GetY(guard_A_placement) .. ", " .. GetZ(guard_A_placement))
    if  Fanthis_location ~=nil then   
    if sli == 413216 then --Varna
		if GetDistance(NPC, Fanthis_location) >= 8 then
			speed = 5
			MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
		else
			speed = 2
			MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
		end 
        end
        end
        speed = 2
	AddTimer(NPC, 2000, "follow_Fanthis")	
end	

--[[ FANTHIS PATROL
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 652.61, -12.3, -363.84, 2, 0)
	MovementLoopAddLocation(NPC, 662.62, -11.36, -366.19, 2, 0)
	MovementLoopAddLocation(NPC, 669.77, -11.62, -368.11, 2, 0)
	MovementLoopAddLocation(NPC, 677.77, -12.09, -371.28, 2, 0)
	MovementLoopAddLocation(NPC, 687.73, -13.16, -375.44, 2, 0)
	MovementLoopAddLocation(NPC, 698.25, -14.21, -381.31, 2, 0)
	MovementLoopAddLocation(NPC, 702.28, -14.68, -382.77, 2, 0)
	MovementLoopAddLocation(NPC, 702.93, -14.13, -390.06, 2, 0)
	MovementLoopAddLocation(NPC, 702.29, -14.04, -400.43, 2, 0)
	MovementLoopAddLocation(NPC, 701.55, -14.5, -408.55, 2, 0)
	MovementLoopAddLocation(NPC, 698.8, -14.31, -410.2, 2, 0)
	MovementLoopAddLocation(NPC, 696.68, -13.96, -409.18, 2, 0)
	MovementLoopAddLocation(NPC, 687.68, -12.52, -400.81, 2, 0)
	MovementLoopAddLocation(NPC, 679.77, -11.63, -395.53, 2, 0)
	MovementLoopAddLocation(NPC, 664.07, -10.72, -397.75, 2, 0)
	MovementLoopAddLocation(NPC, 656.01, -10.98, -398.79, 2, 0)
	MovementLoopAddLocation(NPC, 650.85, -11.4, -391.46, 2, 0)
	MovementLoopAddLocation(NPC, 647.07, -11.87, -381.53, 2, 0)
	MovementLoopAddLocation(NPC, 643.83, -12.55, -373.03, 2, 0)
	MovementLoopAddLocation(NPC, 592.8, -21, -367.06, 2, 0)
	MovementLoopAddLocation(NPC, 579.34, -21.62, -365.14, 2, 0)
	MovementLoopAddLocation(NPC, 571.17, -21.58, -364.76, 2, 0)
	MovementLoopAddLocation(NPC, 556.77, -19.42, -367.04, 2, 0)
	MovementLoopAddLocation(NPC, 548.24, -19.31, -362.96, 2, 0)
	MovementLoopAddLocation(NPC, 544.99, -19.87, -354.35, 2, 0)
	MovementLoopAddLocation(NPC, 549.43, -20.32, -346.18, 2, 0)
	MovementLoopAddLocation(NPC, 554.78, -20.48, -341.17, 2, 0)
	MovementLoopAddLocation(NPC, 559.25, -20.5, -344.45, 2, 0)
	MovementLoopAddLocation(NPC, 573.92, -22.06, -357.46, 2, 0)
	MovementLoopAddLocation(NPC, 576.37, -21.92, -358.99, 2, 0)
	MovementLoopAddLocation(NPC, 586.55, -21.74, -361.98, 2, 0)
	MovementLoopAddLocation(NPC, 599.09, -20.19, -366, 2, 0)
	MovementLoopAddLocation(NPC, 611.97, -18.14, -366.74, 2, 0)
	MovementLoopAddLocation(NPC, 646.26, -12.73, -367.6, 2, 0)
	MovementLoopAddLocation(NPC, 647.4, -12.85, -364.6, 2, 0)
	MovementLoopAddLocation(NPC, 647.6, -13.84, -351.06, 2, 0)
	MovementLoopAddLocation(NPC, 646.7, -17.86, -328.97, 2, 0)
	MovementLoopAddLocation(NPC, 642.52, -18.52, -322.35, 2, 0)
	MovementLoopAddLocation(NPC, 643.21, -17.5, -328.53, 2, 0)
	MovementLoopAddLocation(NPC, 646.13, -13.6, -355.21, 2, 0)
	MovementLoopAddLocation(NPC, 648.31, -13.03, -361.11, 2, 0)
end

]]--



--[[ Old/Wrong pathing via Devnoob.  Pre-group patrol
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 585.65, -18.22, -411.48, 2, 1)
	MovementLoopAddLocation(NPC, 585.65, -18.22, -411.48, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 576.58, -18.16, -412.9, 2, 1)
	MovementLoopAddLocation(NPC, 576.58, -18.16, -412.9, 2, math.random(11,12),"EcologyEmote")
	MovementLoopAddLocation(NPC, 576.58, -18.16, -412.9, 2, 1,"Door")
	MovementLoopAddLocation(NPC, 584.56, -18.17, -411.61, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 617.12, -15.75, -407.56, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.63, -11.51, -399.8, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 644.41, -12.48, -372.51, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 642.47, -20.05, -313.95, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 644.41, -12.48, -372.51, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.63, -11.51, -399.8, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 617.12, -15.75, -407.56, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 584.56, -18.17, -411.61, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 576.58, -18.16, -412.9, 2, math.random(0,8))
end

]]--
