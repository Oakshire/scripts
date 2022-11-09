--[[
    Script Name    : SpawnScripts/DownBelow/rifter_bleeder_2986.lua
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
	MovementLoopAddLocation(NPC, -173.26, 1.17, -118.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -175.91, 1.17, -116.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -178.58, 1.17, -119.20, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -176.89, 1.17, -121.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -185.96, 1.17, -125.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173.26, 1.17, -118.59, 2, math.random(0,5))
	
end


