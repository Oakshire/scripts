--[[
    Script Name     :   SpawnScripts/qeynos_combined02/adragonfly133772446.lua
	Script Purpose	:	Waypoint Path for adragonfly133772446.lua
	Script Author	:	Rylec
	Script Date		:	08-05-2021 12:20:17 
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
	MovementLoopAddLocation(NPC, 672.04, -21.1938, -315.25, 7, MakeRandomInt(5, 8))
	MovementLoopAddLocation(NPC, 657.74, -18.74, -317.62, 7, MakeRandomInt(5, 8))
	MovementLoopAddLocation(NPC, 662.34, -16.94, -316.24, 7, 0)
	MovementLoopAddLocation(NPC, 665.53, -16.32, -308.28, 7, MakeRandomInt(5, 8))
	MovementLoopAddLocation(NPC, 662.43, -18.23, -320.49, 7, MakeRandomInt(5, 8))
	MovementLoopAddLocation(NPC, 668.87, -22.71, -313.84, 7, MakeRandomInt(5, 8))
	MovementLoopAddLocation(NPC, 655.44, -17.18, -315.8, 7, MakeRandomInt(5, 8))
	MovementLoopAddLocation(NPC, 665.29, -19.49, -316.82, 7, MakeRandomInt(5, 8))
	MovementLoopAddLocation(NPC, 665.22, -17.37, -320.67, 7, 0)
	MovementLoopAddLocation(NPC, 664.29, -16.34, -322.62, 7, MakeRandomInt(5, 8))
	MovementLoopAddLocation(NPC, 669.33, -20.81, -319.08, 7, MakeRandomInt(5, 8))
	MovementLoopAddLocation(NPC, 668.49, -21.06, -316.92, 7, MakeRandomInt(5, 8))
	MovementLoopAddLocation(NPC, 664.74, -17.45, -310.99, 7, 0)
	MovementLoopAddLocation(NPC, 660.4, -16.7, -309.3, 7, MakeRandomInt(5, 8))
	MovementLoopAddLocation(NPC, 664.77, -17.08, -317.05, 7, MakeRandomInt(5, 8))
	MovementLoopAddLocation(NPC, 664.16, -16.34, -320.46, 7, MakeRandomInt(5, 8))
	MovementLoopAddLocation(NPC, 665.96, -20.74, -313.39, 7, MakeRandomInt(5, 8))
end