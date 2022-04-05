--[[
    Script Name    : SpawnScripts/DownBelow/venom_spitter3032.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.05 01:04:44
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -105.22, 0, -204.44, 2, 0)
	MovementLoopAddLocation(NPC, -111.74, 0, -206.34, 2, 5)
	MovementLoopAddLocation(NPC, -116.44, 0, -203.99, 2, 0)
	MovementLoopAddLocation(NPC, -118.89, 0, -204.34, 2, 0)
	MovementLoopAddLocation(NPC, -125.98, 0, -196.55, 2, 5)
	MovementLoopAddLocation(NPC, -122.14, 0, -200, 2, 0)
	MovementLoopAddLocation(NPC, -121.56, 0, -202.99, 2, 0)
	MovementLoopAddLocation(NPC, -118.09, 0, -203.85, 2, 0)
	MovementLoopAddLocation(NPC, -113.12, 0, -206.89, 2, 5)
	MovementLoopAddLocation(NPC, -108.55, 0, -209, 2, 0)
end
