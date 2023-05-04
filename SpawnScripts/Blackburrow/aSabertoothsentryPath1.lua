--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothsentryPath1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.03 08:05:55
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")

function spawn(NPC)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -11.99, -12.58, 15.17, 2, 0)
	MovementLoopAddLocation(NPC, -11.99, -12.58, 15.17, 2, 0)
	MovementLoopAddLocation(NPC, -15.23, -12.83, 16.25, 2, 0)
	MovementLoopAddLocation(NPC, -18.58, -13.39, 17.72, 2, 0)
	MovementLoopAddLocation(NPC, -22.57, -13.91, 18.12, 2, 0)
	MovementLoopAddLocation(NPC, -30.57, -15.54, 15.94, 2, 0)
	MovementLoopAddLocation(NPC, -34.12, -16.23, 16.53, 2, 0)
	MovementLoopAddLocation(NPC, -37.22, -16.76, 16.33, 2, 0)
	MovementLoopAddLocation(NPC, -42.94, -17.22, 7.59, 2, 0)
	MovementLoopAddLocation(NPC, -45.97, -17.92, 4.45, 2, 0)
	MovementLoopAddLocation(NPC, -50.14, -18.42, 4.99, 2, 0)
	MovementLoopAddLocation(NPC, -54.97, -18.51, 9.23, 2, 0)
	MovementLoopAddLocation(NPC, -55.83, -18.45, 13.12, 2, 0)
	MovementLoopAddLocation(NPC, -55.11, -18.68, 17.13, 2, 0)
	MovementLoopAddLocation(NPC, -55.26, -18.41, 19.1, 2, 0)
	MovementLoopAddLocation(NPC, -52.83, -18.22, 20.91, 2, 0)
	MovementLoopAddLocation(NPC, -46.08, -17.94, 22.57, 2, 0)
	MovementLoopAddLocation(NPC, -42.76, -17.57, 20.03, 2, 0)
	MovementLoopAddLocation(NPC, -42.07, -17.7, 18.08, 2, 0)
	MovementLoopAddLocation(NPC, -46.13, -17.58, 12.18, 2, 0)
	MovementLoopAddLocation(NPC, -44.57, -17.98, -1.63, 2, 0)
	MovementLoopAddLocation(NPC, -46.06, -17.57, 12.07, 2, 0)
	MovementLoopAddLocation(NPC, -42.36, -17.68, 17.52, 2, 0)
	MovementLoopAddLocation(NPC, -42.54, -17.55, 19.98, 2, 0)
	MovementLoopAddLocation(NPC, -45.56, -17.88, 21.79, 2, 0)
	MovementLoopAddLocation(NPC, -50.89, -18.16, 21.61, 2, 0)
	MovementLoopAddLocation(NPC, -51.94, -18.19, 21.17, 2, 0)
	MovementLoopAddLocation(NPC, -54.64, -18.51, 18.33, 2, 0)
	MovementLoopAddLocation(NPC, -56.2, -18.45, 11.63, 2, 0)
	MovementLoopAddLocation(NPC, -54.38, -18.41, 8.1, 2, 0)
	MovementLoopAddLocation(NPC, -50.94, -18.48, 4.87, 2, 0)
	MovementLoopAddLocation(NPC, -46.27, -18.03, 4.06, 2, 0)
	MovementLoopAddLocation(NPC, -40.1, -16.84, 11.83, 2, 0)
	MovementLoopAddLocation(NPC, -39.78, -16.81, 13.43, 2, 0)
	MovementLoopAddLocation(NPC, -38.32, -16.87, 15.76, 2, 0)
	MovementLoopAddLocation(NPC, -30.57, -15.54, 15.94, 2, 0)
	MovementLoopAddLocation(NPC, -26.79, -14.74, 18.26, 2, 0)
	MovementLoopAddLocation(NPC, -17.17, -13.23, 17.66, 2, 0)
end

