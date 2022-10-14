--[[
    Script Name    : SpawnScripts/Caves/acaveserpent.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.13 12:10:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
if GetSpawnLocationID(NPC)==    133776733 or  GetSpawnLocationID(NPC)==    133776736 then
	MovementLoopAddLocation(NPC, -15.5, 12.78, -54.1, 1, 0)
	MovementLoopAddLocation(NPC, -15.19, 12.78, -61.62, 1, 0)
	MovementLoopAddLocation(NPC, -15.65, 12.78, -72.43, 1, 0)
	MovementLoopAddLocation(NPC, -15.87, 12.78, -83.07, 1, 0)
	MovementLoopAddLocation(NPC, -15.59, 12.78, -90.95, 1, 0)
	MovementLoopAddLocation(NPC, -17.54, 12.78, -90.05, 1, 0)
	MovementLoopAddLocation(NPC, -19.64, 12.78, -86.19, 1, 0)
	MovementLoopAddLocation(NPC, -16.79, 12.78, -69.11, 1, 0)
	MovementLoopAddLocation(NPC, -16.96, 12.78, -57.59, 1, 0)
	MovementLoopAddLocation(NPC, -16.55, 12.78, -54.19, 1, 0)
	MovementLoopAddLocation(NPC, -15.12, 12.78, -53.6, 1, 0)
	MovementLoopAddLocation(NPC, -15.97, 12.78, -64.15, 1, 0)
	MovementLoopAddLocation(NPC, -17.04, 12.78, -74.82, 1, 0)
	MovementLoopAddLocation(NPC, -21.94, 12.78, -78.49, 1, 0)
	MovementLoopAddLocation(NPC, -20.36, 12.78, -85.44, 1, 0)
	MovementLoopAddLocation(NPC, -15.8, 12.78, -94.3, 1, 0)
	MovementLoopAddLocation(NPC, -5.6, 12.78, -96.8, 1, 0)
	MovementLoopAddLocation(NPC, -9.77, 12.78, -94.27, 1, 0)
	MovementLoopAddLocation(NPC, -13.64, 12.78, -90.41, 1, 0)
	MovementLoopAddLocation(NPC, -14.22, 12.78, -80.79, 1, 0)
	MovementLoopAddLocation(NPC, -15.06, 12.78, -57.85, 1, 0)
	MovementLoopAddLocation(NPC, -14.22, 12.78, -80.79, 1, 0)
	MovementLoopAddLocation(NPC, -13.64, 12.78, -90.41, 1, 0)
	MovementLoopAddLocation(NPC, -9.77, 12.78, -94.27, 1, 0)
	MovementLoopAddLocation(NPC, -5.6, 12.78, -96.8, 1, 0)
	MovementLoopAddLocation(NPC, -15.8, 12.78, -94.3, 1, 0)
	MovementLoopAddLocation(NPC, -20.36, 12.78, -85.44, 1, 0)
	MovementLoopAddLocation(NPC, -21.94, 12.78, -78.49, 1, 0)
	MovementLoopAddLocation(NPC, -17.04, 12.78, -74.82, 1, 0)
	MovementLoopAddLocation(NPC, -15.97, 12.78, -64.15, 1, 0)
	MovementLoopAddLocation(NPC, -15.12, 12.78, -53.6, 1, 0)
	MovementLoopAddLocation(NPC, -16.55, 12.78, -54.19, 1, 0)
	MovementLoopAddLocation(NPC, -16.96, 12.78, -57.59, 1, 0)
	MovementLoopAddLocation(NPC, -16.79, 12.78, -69.11, 1, 0)
	MovementLoopAddLocation(NPC, -19.64, 12.78, -86.19, 1, 0)
	MovementLoopAddLocation(NPC, -17.54, 12.78, -90.05, 1, 0)
	MovementLoopAddLocation(NPC, -15.59, 12.78, -90.95, 1, 0)
	MovementLoopAddLocation(NPC, -15.87, 12.78, -83.07, 1, 0)
	MovementLoopAddLocation(NPC, -15.65, 12.78, -72.43, 1, 0)
	MovementLoopAddLocation(NPC, -15.19, 12.78, -61.62, 1, 0)
	MovementLoopAddLocation(NPC, -15.5, 12.78, -54.1, 1, 0)
end
end

