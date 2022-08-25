--[[
	Script Name	: SpawnScripts/ElddarGrove/ThomasBoatmend.lua
	Script Purpose	: Thomas Boatmend 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Updated dialogue 5.1.2022 Dorbin
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericRaceCheckHail(NPC, Spawn)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn)
    end
    
function respawn(NPC)
		spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 608.2, -22.42, -262.67, 2, 1)
	MovementLoopAddLocation(NPC, 608.2, -22.42, -262.67, 2, math.random(6,40),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 608.2, -22.42, -262.67, 2, 0)
	MovementLoopAddLocation(NPC, 628, -19.98, -255.72, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.99, -18.69, -259.97, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 668.55, -17.16, -252.57, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 696.95, -16.92, -266.28, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 727.46, -17.12, -283.24, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 748.5, -16.63, -286.53, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 772.33, -18.05, -316.26, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 771.52, -21.32, -339.44, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 769.78, -19.46, -332.72, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 707.06, -17.27, -330.28, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.79, -20.69, -284.66, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.31, -13.81, -350.1, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649, -13.04, -360.21, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 705.57, -15.84, -377.92, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 700.97, -16.22, -424.97, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 710.26, -20.39, -450.74, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 700.58, -16.23, -425.43, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 679.65, -12.02, -416.88, 2, 1)
	MovementLoopAddLocation(NPC, 679.65, -12.02, -416.88, 2, math.random(8,40),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 679.65, -12.02, -416.88, 2, 0)
	MovementLoopAddLocation(NPC, 700.58, -16.23, -425.43, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 710.26, -20.39, -450.74, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 700.97, -16.22, -424.97, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 705.57, -15.84, -377.92, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649, -13.04, -360.21, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.31, -13.81, -350.1, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.79, -20.69, -284.66, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 707.06, -17.27, -330.28, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 769.78, -19.46, -332.72, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 771.52, -21.32, -339.44, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 772.33, -18.05, -316.26, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 748.5, -16.63, -286.53, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 727.46, -17.12, -283.24, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 696.95, -16.92, -266.28, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 668.55, -17.16, -252.57, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.99, -18.69, -259.97, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 628, -19.98, -255.72, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 608.2, -22.42, -262.67, 2, math.random(0,40))
end

