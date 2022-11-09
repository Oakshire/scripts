--[[
    Script Name    : SpawnScripts/DownBelow/rifter_bleeder_2987.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.03.26 02:03:33
    Script Purpose : Basic Pathing
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
	MovementLoopAddLocation(NPC, -184.46, 1.17, -123.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -180.13, 1.17, -120.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -178.06, 1.17, -123.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -172.80, 1.17, -120.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -177.54, 1.17, -123.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -181.00, 1.17, -119.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -184.46, 1.17, -123.43, 2, math.random(0,5))
end

