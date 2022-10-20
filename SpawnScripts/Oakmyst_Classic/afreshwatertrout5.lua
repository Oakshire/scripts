--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/afreshwatertrout5.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.19 07:10:16
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
	MovementLoopAddLocation(NPC, 934.02, 0.97, -273.71, 2, 4)
	MovementLoopAddLocation(NPC, 927.4, 1.1, -279.91, 2, 0)
	MovementLoopAddLocation(NPC, 924.12, 1.15, -282.01, 2, 0)
	MovementLoopAddLocation(NPC, 917.83, 1.2, -281.75, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 917.83, 1.2, -281.75, 2, 0)
	MovementLoopAddLocation(NPC, 926.01, 1.21, -282.16, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 926.01, 1.21, -282.16, 2, 0)
	MovementLoopAddLocation(NPC, 927.31, 1.11, -280.06, 2, 0)
	MovementLoopAddLocation(NPC, 932.42, 0.88, -275.88, 2, 0)
	MovementLoopAddLocation(NPC, 935.41, 1.04, -275.61, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 935.41, 1.04, -275.61, 2, 0)
	MovementLoopAddLocation(NPC, 932.6, 0.35, -263.97, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 932.6, 0.35, -263.97, 2, 0)
	MovementLoopAddLocation(NPC, 933.61, 0.92, -270.15, 2, 0)
	MovementLoopAddLocation(NPC, 932.13, 0.89, -276.16, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 932.13, 0.89, -276.16, 2, 0)
	MovementLoopAddLocation(NPC, 933.5, 0.66, -267.74, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 933.5, 0.66, -267.74, 2, 0)
	MovementLoopAddLocation(NPC, 934.02, 0.97, -273.71, 2, 4)
end

