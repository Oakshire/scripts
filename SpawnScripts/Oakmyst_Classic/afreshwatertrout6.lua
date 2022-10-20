--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/afreshwatertrout6.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.19 07:10:23
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
	MovementLoopAddLocation(NPC, 918.48, 1.16, -281.58, 2, 4)
	MovementLoopAddLocation(NPC, 914.3, 0.81, -277.93, 2, 0)
	MovementLoopAddLocation(NPC, 914.17, 0.62, -271.27, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 914.17, 0.62, -271.27, 2, 0)
	MovementLoopAddLocation(NPC, 912.18, 0.93, -276.15, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 912.18, 0.93, -276.15, 2, 0)
	MovementLoopAddLocation(NPC, 918.84, 0.22, -269.53, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 918.84, 0.22, -269.53, 2, 0)
	MovementLoopAddLocation(NPC, 914.07, 0.67, -274.17, 2, 0)
	MovementLoopAddLocation(NPC, 915.37, 0.93, -280.26, 2, 0)
	MovementLoopAddLocation(NPC, 922.12, 1.13, -282.52, 2, 0)
	MovementLoopAddLocation(NPC, 925.92, 1.21, -281.66, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 925.92, 1.21, -281.66, 2, 0)
	MovementLoopAddLocation(NPC, 922.71, 1.15, -282.25, 2, 0)
	MovementLoopAddLocation(NPC, 913.41, 0.89, -277.63, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 913.41, 0.89, -277.63, 2, 0)
	MovementLoopAddLocation(NPC, 914.87, 0.56, -271.98, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 914.87, 0.56, -271.98, 2, 0)
	MovementLoopAddLocation(NPC, 913.87, 0.77, -276.57, 2, 0)
	MovementLoopAddLocation(NPC, 918.48, 1.16, -281.58, 2, 4)
end

