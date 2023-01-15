--[[
    Script Name    : SpawnScripts/DownBelow_Classic/arottingcitizenPatrol.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.15 03:01:03
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
	MovementLoopAddLocation(NPC, -180.08, 0, -16.5, 1, 5)
	MovementLoopAddLocation(NPC, -186.5, 0, -10.03, 1, 0)
	MovementLoopAddLocation(NPC, -189.5, 0, -9.71, 1, 0)
	MovementLoopAddLocation(NPC, -192.96, 0, -10.93, 1, 0)
	MovementLoopAddLocation(NPC, -194.46, 0, -11.91, 1, 0)
	MovementLoopAddLocation(NPC, -195.91, 0, -13.95, 1, 0)
	MovementLoopAddLocation(NPC, -196.21, 0, -17.38, 1, 0)
	MovementLoopAddLocation(NPC, -191.09, 0, -21.23, 1, 0)
	MovementLoopAddLocation(NPC, -188.17, 0, -25.82, 1, 0)
	MovementLoopAddLocation(NPC, -188.71, 0, -29.6, 1, 0)
	MovementLoopAddLocation(NPC, -193.64, 0, -34.45, 1, 0)
	MovementLoopAddLocation(NPC, -196.97, 0, -34.04, 1, 0)
	MovementLoopAddLocation(NPC, -202.29, 0, -29.35, 1, 0)
	MovementLoopAddLocation(NPC, -203.66, 0, -26.34, 1, 0)
	MovementLoopAddLocation(NPC, -202.69, 0, -23.27, 1, 0)
	MovementLoopAddLocation(NPC, -197.86, 0, -17.61, 1, 0)
	MovementLoopAddLocation(NPC, -195.8, 0, -12.94, 1, 0)
	MovementLoopAddLocation(NPC, -193.78, 0, -10.69, 1, 0)
	MovementLoopAddLocation(NPC, -190.96, 0, -10.79, 1, 0)
	MovementLoopAddLocation(NPC, -188.22, 0, -9.95, 1, 0)
	MovementLoopAddLocation(NPC, -184.39, 0, -11.48, 1, 0)
	MovementLoopAddLocation(NPC, -180.08, 0, -16.5, 1, 0)
end

