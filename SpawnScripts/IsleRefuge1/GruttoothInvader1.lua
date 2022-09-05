--[[
    Script Name    : SpawnScripts/IsleRefuge1/GruttoothInvader1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 01:09:01
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
	MovementLoopAddLocation(NPC, 191.15, -3.2, 148.19, 4, 2)
	MovementLoopAddLocation(NPC, 175.61, -3.2, 159.61, 4, 0)
	MovementLoopAddLocation(NPC, 168.01, -3.2, 162.72, 4, 0)
	MovementLoopAddLocation(NPC, 151.22, -3.4, 158.64, 4, 0)
	MovementLoopAddLocation(NPC, 136.75, -3.7, 163.07, 4, 0)
	MovementLoopAddLocation(NPC, 123.14, -3.8, 164.37, 4, 0)
	MovementLoopAddLocation(NPC, 85.25, -4.55, 173.65, 4, 0)
	MovementLoopAddLocation(NPC, 72.77, -4.3, 170.65, 2, 0)
	MovementLoopAddLocation(NPC, 69.72, -4.49, 177.25, 2, 0)
	MovementLoopAddLocation(NPC, 70.63, -4.29, 171.24, 2, 0)
	MovementLoopAddLocation(NPC, 69.72, -4.49, 177.25, 2, 0)
	MovementLoopAddLocation(NPC, 70.63, -4.29, 171.24, 2, 0)
	MovementLoopAddLocation(NPC, 69.72, -4.49, 177.25, 2, 0)
	MovementLoopAddLocation(NPC, 70.63, -4.29, 171.24, 2, 300)
end

