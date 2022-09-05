--[[
    Script Name    : SpawnScripts/IsleRefuge1/GruttoothInvader4.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 02:09:17
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
	MovementLoopAddLocation(NPC, 162.7, -2.11, 190.37, 4, 2)
	MovementLoopAddLocation(NPC, 132.06, -3.72, 185.93, 4, 0)
	MovementLoopAddLocation(NPC, 110.2, -4, 186.98, 4, 0)
	MovementLoopAddLocation(NPC, 91.61, -4.29, 185.36, 4, 0)
	MovementLoopAddLocation(NPC, 71.09, -4.49, 177, 4, 0)
	MovementLoopAddLocation(NPC, 72.77, -4.3, 170.65, 4, 0)
	MovementLoopAddLocation(NPC, 69.72, -4.49, 177.25, 4, 0)
	MovementLoopAddLocation(NPC, 70.63, -4.29, 171.24, 4, 0)
	MovementLoopAddLocation(NPC, 69.72, -4.49, 177.25, 4, 0)
	MovementLoopAddLocation(NPC, 70.63, -4.29, 171.24, 4, 0)
	MovementLoopAddLocation(NPC, 69.72, -4.49, 177.25, 4, 0)
	MovementLoopAddLocation(NPC, 70.63, -4.29, 171.24, 4, 300)
end

