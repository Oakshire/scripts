--[[
    Script Name     :   SpawnScripts/qeynos_combined02/Elddarkestrel570546.lua
	Script Purpose	:	Waypoint Path for Elddarkestrel570546.lua
	Script Author	:	Rylec
	Script Date		:	09-04-2021 12:27:04 
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
	MovementLoopAddLocation(NPC, 598.12, -13.5675, -394.69, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 609.18, -12.5, -395.09, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 596.44, -14.1, -390.02, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 611.28, -13, -388.22, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 601.51, -14.5, -390.65, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 602.99, -14.37, -387.92, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 598.08, -13.8, -394.44, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 601.54, -14.79, -387.73, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 603.34, -14.4, -386.56, 2, math.random(10, 17))
end
