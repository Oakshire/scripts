--[[
    Script Name    : SpawnScripts/QeynosHarbor/JayvelleNightcry.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.10 03:06:09
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn, faction)
    end
    
function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 822.63, -23.36, 108.25, 2, 1)
	MovementLoopAddLocation(NPC, 822.63, -23.36, 108.25, 2, math.random(20,35),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 818.87, -23.32, 104.58, 2, 0)
	MovementLoopAddLocation(NPC, 820.26, -23.33, 81.49, 2, 0)
	MovementLoopAddLocation(NPC, 835.95, -23.5, 52.35, 2, 1)
	MovementLoopAddLocation(NPC, 835.95, -23.5, 52.35, 2, math.random(20,35),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 836.02, -23.31, 46.13, 2, 0)
	MovementLoopAddLocation(NPC, 857.63, -25.39, 43.18, 2, 0)
	MovementLoopAddLocation(NPC, 882.96, -25.45, 48.95, 2, math.random(10,15))
	MovementLoopAddLocation(NPC, 895.26, -25.5, 45.79, 2, 0)
	MovementLoopAddLocation(NPC, 926.1, -25.56, 55.37, 2, 0)
	MovementLoopAddLocation(NPC, 954.75, -25.56, 66.07, 2, 1)
	MovementLoopAddLocation(NPC, 954.75, -25.56, 66.07, 2, math.random(20,35),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 926.1, -25.56, 55.37, 2, 0)
	MovementLoopAddLocation(NPC, 895.26, -25.5, 45.79, 2, 0)
	MovementLoopAddLocation(NPC, 882.96, -25.45, 48.95, 2, 0)
	MovementLoopAddLocation(NPC, 857.63, -25.39, 43.18, 2, 0)
	MovementLoopAddLocation(NPC, 836.02, -23.31, 46.13, 2, 0)
	MovementLoopAddLocation(NPC, 835.95, -23.5, 52.35, 2, 1)
	MovementLoopAddLocation(NPC, 835.95, -23.5, 52.35, 2, math.random(20,35),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 820.26, -23.33, 81.49, 2, 0)
	MovementLoopAddLocation(NPC, 818.87, -23.32, 104.58, 2, 0)
	MovementLoopAddLocation(NPC, 822.63, -23.36, 108.25, 2, 1)
	MovementLoopAddLocation(NPC, 822.63, -23.36, 108.25, 2, math.random(20,35),"EcologyEmotes")
end