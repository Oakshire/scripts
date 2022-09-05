--[[
    Script Name    : SpawnScripts/IsleRefuge1/GruttoothInvader3.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 02:09:44
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
	MovementLoopAddLocation(NPC, 158.62, -2.9, 141.42, 4, 2)
	MovementLoopAddLocation(NPC, 141.01, -4, 146.43, 4, 0)
	MovementLoopAddLocation(NPC, 111.05, -3.8, 159.4, 4, 0)
	MovementLoopAddLocation(NPC, 79.07, -4.36, 159.16, 4, 0)
	MovementLoopAddLocation(NPC, 70.23, -4.3, 159.54, 4, 0)
	MovementLoopAddLocation(NPC, 70.23, -4.3, 159.54, 4, 0)
	MovementLoopAddLocation(NPC, 70.85, -4.31, 162.16, 4, 0)
	MovementLoopAddLocation(NPC, 70.23, -4.3, 159.54, 4, 0)
	MovementLoopAddLocation(NPC, 70.85, -4.31, 162.16, 4, 0)
	MovementLoopAddLocation(NPC, 70.23, -4.3, 159.54, 4, 0)
	MovementLoopAddLocation(NPC, 70.85, -4.31, 162.16, 4, 300)
end
