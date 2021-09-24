--[[
    Script Name     :   SpawnScripts/qeynos_combined02/adragonfly133772589.lua
	Script Purpose	:	Waypoint Path for adragonfly133772589.lua
	Script Author	:	Rylec
	Script Date		:	09-18-2021 11:38:13 
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
	MovementLoopAddLocation(NPC, 675.41, -15, -241.59, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 681.22, -13.41, -247.36, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 671.07, -13.15, -250.31, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 679.9, -13.56, -251.38, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 673.63, -14.68, -249.51, 7, 0)
	MovementLoopAddLocation(NPC, 671.54, -15.28, -247.7, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 676.18, -14.14, -248.24, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 679.71, -13.64, -247.19, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 671.8, -12.9, -246.4, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 675.5, -14.14, -245.11, 7, 0)
	MovementLoopAddLocation(NPC, 678, -14.58, -243.08, 7, 0)
	MovementLoopAddLocation(NPC, 679.18, -15.15, -240.39, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 678.97, -14.34, -243.6, 7, 0)
	MovementLoopAddLocation(NPC, 675.54, -13.13, -250.06, 7, 0)
	MovementLoopAddLocation(NPC, 673.16, -12.81, -251.24, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 677.15, -12.65, -252.1, 7, math.random(5, 8))
end