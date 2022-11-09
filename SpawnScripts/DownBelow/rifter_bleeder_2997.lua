--[[
    Script Name    : SpawnScripts/DownBelow/rifter_bleeder_2997.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.01 04:04:01
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
	MovementLoopAddLocation(NPC, -195.61, -0.39, -122.19, 2, 0)
	MovementLoopAddLocation(NPC, -195.66, -0.39, -122.74, 2, 7)
	MovementLoopAddLocation(NPC, -199.84, -0.39, -127.07, 2, 0)
	MovementLoopAddLocation(NPC, -199.26, -0.39, -124.48, 2, 0)
	MovementLoopAddLocation(NPC, -199.99, -0.39, -126.64, 2, 5)
	MovementLoopAddLocation(NPC, -201.47, -0.39, -129.78, 2, 6)
	MovementLoopAddLocation(NPC, -206.53, -0.39, -127.82, 2, 5)
	MovementLoopAddLocation(NPC, -203.62, -0.39, -125.42, 2, 5)
end


