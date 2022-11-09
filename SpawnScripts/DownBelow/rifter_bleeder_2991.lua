--[[
    Script Name    : SpawnScripts/DownBelow/rifter_bleeder_2991.lua
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
	MovementLoopAddLocation(NPC, -177.62, 1.17, -119.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -181.01, 1.17, -123.40, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -172.41, 1.17, -117.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -179.91, 1.17, -117.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -177.62, 1.17, -119.77, 2, math.random(0,5))
	
end