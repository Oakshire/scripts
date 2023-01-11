--[[
    Script Name    : SpawnScripts/DownBelow_Classic/avenomouskeeper2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.10 08:01:07
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
	MovementLoopAddLocation(NPC, -108.54, 0, -204.4, 2, 4)
	MovementLoopAddLocation(NPC, -110.93, 0, -205.49, 2, 0)
	MovementLoopAddLocation(NPC, -112.79, 0, -205.09, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -112.79, 0, -205.09, 2, 0)
	MovementLoopAddLocation(NPC, -109.38, 0, -204.87, 2, 0)
	MovementLoopAddLocation(NPC, -106.52, 0, -203.13, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -106.52, 0, -203.13, 2, 0)
	MovementLoopAddLocation(NPC, -106.52, 0, -203.13, 2, 0)
	MovementLoopAddLocation(NPC, -106.48, 0, -207.48, 2, 0)
	MovementLoopAddLocation(NPC, -105.21, 0, -208.19, 2, 0)
	MovementLoopAddLocation(NPC, -101.39, 0, -207.69, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -101.39, 0, -207.69, 2, 0)
	MovementLoopAddLocation(NPC, -104.21, 0, -208, 2, 0)
	MovementLoopAddLocation(NPC, -105.1, 0, -207.16, 2, 0)
	MovementLoopAddLocation(NPC, -109.28, 0, -204.57, 2, 0)
	MovementLoopAddLocation(NPC, -113, 0, -204.27, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -113, 0, -204.27, 2, 0)
	MovementLoopAddLocation(NPC, -111.63, 0, -204.74, 2, 0)
	MovementLoopAddLocation(NPC, -105.58, 0, -204.52, 2, 0)
	MovementLoopAddLocation(NPC, -100.24, 0, -203.7, 2, 0)
	MovementLoopAddLocation(NPC, -99.77, 0, -201.63, 2, 0)
	MovementLoopAddLocation(NPC, -99.26, 0, -197.07, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -99.26, 0, -197.07, 2, 0)
	MovementLoopAddLocation(NPC, -99.49, 0, -199.19, 2, 0)
	MovementLoopAddLocation(NPC, -99.7, 0, -202.79, 2, 0)
	MovementLoopAddLocation(NPC, -100.81, 0, -203.72, 2, 0)
	MovementLoopAddLocation(NPC, -103.54, 0, -203.89, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -103.54, 0, -203.89, 2, 0)
	MovementLoopAddLocation(NPC, -108.88, 0, -202.67, 2, 0)
	MovementLoopAddLocation(NPC, -111.48, 0, -200.96, 2, 0)
	MovementLoopAddLocation(NPC, -113.22, 0, -201.74, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -113.22, 0, -201.74, 2, 0)
	MovementLoopAddLocation(NPC, -111.77, 0, -201.59, 2, 0)
	MovementLoopAddLocation(NPC, -105.74, 0, -203.36, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -105.74, 0, -203.36, 2, 0)
	MovementLoopAddLocation(NPC, -103.06, 0, -203.8, 2, 0)
	MovementLoopAddLocation(NPC, -100.59, 0, -203.85, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -100.59, 0, -203.85, 2, 0)
	MovementLoopAddLocation(NPC, -104.01, 0, -204.49, 2, 0)
	MovementLoopAddLocation(NPC, -108.83, 0, -203.98, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -108.83, 0, -203.98, 2, 0)
end
