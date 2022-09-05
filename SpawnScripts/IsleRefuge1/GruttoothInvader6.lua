--[[
    Script Name    : SpawnScripts/IsleRefuge1/GruttoothInvader6.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 02:09:07
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
	MovementLoopAddLocation(NPC, 145.04, -4.02, 130.32, 4, 5)
	MovementLoopAddLocation(NPC, 131.35, -4.04, 149.64, 4, 0)
	MovementLoopAddLocation(NPC, 114.48, -3.88, 157.4, 4, 0)
	MovementLoopAddLocation(NPC, 93.67, -4.19, 156.1, 4, 0)
	MovementLoopAddLocation(NPC, 81.06, -4.36, 159.3, 4, 0)
	MovementLoopAddLocation(NPC, 72.57, -4.35, 162.88, 4, 0)
	MovementLoopAddLocation(NPC, 70.23, -4.3, 159.54, 2, 5)
	MovementLoopAddLocation(NPC, 70.85, -4.31, 162.16, 2, 0)
	MovementLoopAddLocation(NPC, 70.23, -4.3, 159.54, 2, 5)
	MovementLoopAddLocation(NPC, 70.85, -4.31, 162.16, 2, 0)
	MovementLoopAddLocation(NPC, 70.23, -4.3, 159.54, 2, 5)
	MovementLoopAddLocation(NPC, 70.85, -4.31, 162.16, 2, 300)
end




