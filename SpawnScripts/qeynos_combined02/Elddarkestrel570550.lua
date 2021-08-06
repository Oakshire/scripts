--[[
    Script Name     :   SpawnScripts/qeynos_combined02/Elddarkestrel570550.lua
	Script Purpose	:	Waypoint Path for Elddarkestrel570550.lua
	Script Author	:	Rylec
	Script Date		:	08-05-2021 12:20:20 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 676.02, -10.3251, -356.04, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 679.61, -9.78, -355.17, 2, 0)
	MovementLoopAddLocation(NPC, 683.9, -9.58, -356.33, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 685.29, -9.61, -354.87, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 680.98, -10.41, -353.15, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 690.7, -12.75, -359.37, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 682.8, -10.96, -351.78, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 682.55, -10.59, -358.27, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 679.02, -10.02, -354.17, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 689.42, -11.85, -353.8, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 683.07, -12.23, -358.43, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 681.56, -11.39, -353.56, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 690.18, -10.37, -356.09, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 680.87, -11.45, -357.62, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 681.41, -11.06, -359.81, 2, MakeRandomInt(10, 17))
	MovementLoopAddLocation(NPC, 678.98, -10.57, -351.24, 2, MakeRandomInt(10, 17))
end