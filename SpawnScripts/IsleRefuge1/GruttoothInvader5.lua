--[[
    Script Name    : SpawnScripts/IsleRefuge1/GruttoothInvader5.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 02:09:57
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
	MovementLoopAddLocation(NPC, 172.77, -3.4, 169.95, 4, 2)
	MovementLoopAddLocation(NPC, 144.38, -3.5, 170.94, 4, 0)
	MovementLoopAddLocation(NPC, 133.42, -3.7, 165.75, 4, 0)
	MovementLoopAddLocation(NPC, 117.94, -3.8, 165.29, 4, 0)
	MovementLoopAddLocation(NPC, 105.02, -4, 169.56, 4, 0)
	MovementLoopAddLocation(NPC, 93.77, -4.25, 169.18, 4, 0)
	MovementLoopAddLocation(NPC, 84.66, -4.36, 165.45, 4, 0)
	MovementLoopAddLocation(NPC, 81.08, -4.36, 159.06, 4, 0)
	MovementLoopAddLocation(NPC, 73.96, -4.36, 159.11, 4, 0)
	MovementLoopAddLocation(NPC, 70.23, -4.3, 159.54, 2, 5)
	MovementLoopAddLocation(NPC, 70.85, -4.31, 162.16, 2, 0)
	MovementLoopAddLocation(NPC, 70.23, -4.3, 159.54, 2, 5)
	MovementLoopAddLocation(NPC, 70.85, -4.31, 162.16, 2, 0)
	MovementLoopAddLocation(NPC, 70.23, -4.3, 159.54, 2, 5)
	MovementLoopAddLocation(NPC, 70.85, -4.31, 162.16, 2, 300)
end

