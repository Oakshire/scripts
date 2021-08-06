--[[
    Script Name     :   SpawnScripts/qeynos_combined02/Elddarkestrel570547.lua
	Script Purpose	:	Waypoint Path for Elddarkestrel570547.lua
	Script Author	:	Rylec
	Script Date		:	08-05-2021 12:20:15 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 685.4, -17.3865, -309.02, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 683.12, -17.03, -306.35, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 673.83, -18.01, -308.62, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 677.35, -15.73, -317.05, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 674.85, -16.33, -312.11, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 679.14, -17.07, -305.21, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 683.56, -16.78, -307.31, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 676.91, -17.61, -306.32, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 683, -16.35, -315.1, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 672.63, -18.41, -304.35, 2, MakeRandomInt(10, 17))
end

function respawn(NPC)
	spawn(NPC)
end