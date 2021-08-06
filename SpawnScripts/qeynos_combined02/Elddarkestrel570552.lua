--[[
    Script Name     :   SpawnScripts/qeynos_combined02/Elddarkestrel570552.lua
	Script Purpose	:	Waypoint Path for Elddarkestrel570552.lua
	Script Author	:	Rylec
	Script Date		:	08-05-2021 12:20:12 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 700.08, -14.8696, -279.22, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 701.07, -15.36, -271.82, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 699.03, -14.57, -271.66, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 697.13, -15.55, -266.57, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 702.46, -14.42, -267.44, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 695.44, -15.16, -272.64, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 704.27, -11.9, -270.09, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 702.37, -12.4, -271.67, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 708.82, -13.71, -267.97, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 699.61, -12.53, -272.16, 2, 0)
	MovementLoopAddLocation(NPC, 692.23, -12.07, -272.6, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 704.96, -14.13, -276.16, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 698.19, -13.45, -270.42, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 702.98, -14.28, -274.59, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 704.23, -14.56, -277.72, 2, MakeRandomInt(10, 17))
end