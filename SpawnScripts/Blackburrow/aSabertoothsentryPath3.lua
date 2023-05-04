--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothsentryPath3.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.03 08:05:04
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
	MovementLoopAddLocation(NPC, -19.87, -16.25, 81.71, 2, 0)
	MovementLoopAddLocation(NPC, -17.26, -16.23, 75.4, 2, 0)
	MovementLoopAddLocation(NPC, -14.03, -16.09, 68.12, 2, 0)
	MovementLoopAddLocation(NPC, -4.68, -15.27, 66.09, 2, 0)
	MovementLoopAddLocation(NPC, 13.14, -15.5, 63.72, 2, 0)
	MovementLoopAddLocation(NPC, 3.56, -15.63, 64.35, 2, 0)
	MovementLoopAddLocation(NPC, 3.56, -15.63, 64.35, 2, 0)
	MovementLoopAddLocation(NPC, 0.78, -15.59, 65.47, 2, 0)
	MovementLoopAddLocation(NPC, -12.69, -15.99, 66.33, 2, 0)
	MovementLoopAddLocation(NPC, -12.84, -15.63, 60.07, 2, 0)
	MovementLoopAddLocation(NPC, -10.57, -15.18, 54.13, 2, 0)
	MovementLoopAddLocation(NPC, -14.43, -14.35, 43.17, 2, 0)
	MovementLoopAddLocation(NPC, -15.42, -13.93, 38.9, 2, 0)
	MovementLoopAddLocation(NPC, -17.71, -13.61, 35.78, 2, 0)
	MovementLoopAddLocation(NPC, -17.07, -13.06, 28.58, 2, 0)
	MovementLoopAddLocation(NPC, -16.94, -13.71, 36.74, 2, 0)
	MovementLoopAddLocation(NPC, -14.77, -14.08, 40.6, 2, 0)
	MovementLoopAddLocation(NPC, -11.76, -15.03, 50.58, 2, 0)
	MovementLoopAddLocation(NPC, -10.07, -15.09, 52.89, 2, 0)
	MovementLoopAddLocation(NPC, -12.83, -15.71, 61.07, 2, 0)
	MovementLoopAddLocation(NPC, -12.95, -15.95, 64.97, 2, 0)
	MovementLoopAddLocation(NPC, -7.83, -15.3, 65.9, 2, 0)
	MovementLoopAddLocation(NPC, 2.95, -15.65, 64.97, 2, 0)
	MovementLoopAddLocation(NPC, 6.18, -15.54, 63.91, 2, 0)
	MovementLoopAddLocation(NPC, 13.31, -15.5, 63.11, 2, 0)
	MovementLoopAddLocation(NPC, -0.79, -15.51, 65.37, 2, 0)
	MovementLoopAddLocation(NPC, -2.03, -15.42, 66.04, 2, 0)
	MovementLoopAddLocation(NPC, -8.01, -15.32, 66.38, 2, 0)
	MovementLoopAddLocation(NPC, -14, -16.09, 67.9, 2, 0)
	MovementLoopAddLocation(NPC, -16.47, -16.22, 74.2, 2, 0)
end

