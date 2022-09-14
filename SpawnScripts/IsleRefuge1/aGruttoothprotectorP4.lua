--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothprotectorP4.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.14 04:09:52
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
	MovementLoopAddLocation(NPC, -11.89, 2.46, -176.1, 2, 5)
	MovementLoopAddLocation(NPC, -9.63, 2.45, -177.71, 2, 0)
	MovementLoopAddLocation(NPC, -7.79, 2.44, -180.19, 2, 0)
	MovementLoopAddLocation(NPC, -5.25, 2.44, -183.92, 2, 0)
	MovementLoopAddLocation(NPC, -2.4, 2.16, -191.19, 2, 0)
	MovementLoopAddLocation(NPC, 6.12, 1.84, -210.59, 2, 0)
	MovementLoopAddLocation(NPC, 9.51, 1.83, -215.3, 2, 0)
	MovementLoopAddLocation(NPC, 15.09, 1.81, -220.53, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 15.09, 1.81, -220.53, 2, 0)
	MovementLoopAddLocation(NPC, 11.22, 1.82, -217.93, 2, 0)
	MovementLoopAddLocation(NPC, 7.79, 1.84, -213.85, 2, 0)
	MovementLoopAddLocation(NPC, 5.68, 1.84, -210.2, 2, 0)
	MovementLoopAddLocation(NPC, -4.1, 2.43, -186.41, 2, 0)
	MovementLoopAddLocation(NPC, -6.13, 2.44, -182.44, 2, 0)
	MovementLoopAddLocation(NPC, -11.89, 2.46, -176.1, 2, 0)
end

