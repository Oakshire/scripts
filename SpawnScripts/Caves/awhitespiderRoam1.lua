--[[
    Script Name    : SpawnScripts/Caves/awhitespiderRoam1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.04 06:10:00
    Script Purpose : 
                   : 
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
	MovementLoopAddLocation(NPC, -23.32, 13.25, -56.31, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -22.55, 13.05, -53.63, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -22.55, 13.05, -53.63, 2, 0)
	MovementLoopAddLocation(NPC, -26.36, 13.06, -56.26, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -26.36, 13.06, -56.26, 2, 0)
	MovementLoopAddLocation(NPC, -22.68, 12.94, -52.01, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -22.68, 12.94, -52.01, 2, 0)
	MovementLoopAddLocation(NPC, -21.56, 12.86, -62.93, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -21.56, 12.86, -62.93, 2, 0)
	MovementLoopAddLocation(NPC, -25.41, 12.94, -73.04, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -25.41, 12.94, -73.04, 2, 0)
	MovementLoopAddLocation(NPC, -24.69, 12.72, -63.2, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -24.69, 12.72, -63.2, 2, 0)
	MovementLoopAddLocation(NPC, -20.76, 12.9, -62.23, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -20.76, 12.9, -62.23, 2, 0)
	MovementLoopAddLocation(NPC, -25.04, 12.71, -62.12, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -25.04, 12.71, -62.12, 2, 0)
	MovementLoopAddLocation(NPC, -21.45, 12.96, -71.94, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -21.45, 12.96, -71.94, 2, 0)
	MovementLoopAddLocation(NPC, -24.09, 12.73, -65.53, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -24.09, 12.73, -65.53, 2, 0)
	MovementLoopAddLocation(NPC, -25.47, 13.09, -54.55, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -25.47, 13.09, -54.55, 2, 0)
	MovementLoopAddLocation(NPC, -23.32, 13.25, -56.31, 2, 0)
end

