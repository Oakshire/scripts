--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothsentryPath2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.03 08:05:48
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
	MovementLoopAddLocation(NPC, -58.11, -17.15, 65.23, 2, 0)
	MovementLoopAddLocation(NPC, -55.42, -17.23, 63.93, 2, 0)
	MovementLoopAddLocation(NPC, -51.58, -16.92, 63.15, 2, 0)
	MovementLoopAddLocation(NPC, -41.14, -15.91, 57.67, 2, 0)
	MovementLoopAddLocation(NPC, -36.01, -15.55, 54.76, 2, 0)
	MovementLoopAddLocation(NPC, -33.8, -15, 52.22, 2, 0)
	MovementLoopAddLocation(NPC, -27.22, -14.56, 46.65, 2, 0)
	MovementLoopAddLocation(NPC, -26.04, -14.46, 44.76, 2, 0)
	MovementLoopAddLocation(NPC, -24.53, -14.4, 44.28, 2, 0)
	MovementLoopAddLocation(NPC, -22.01, -14.42, 44.57, 2, 0)
	MovementLoopAddLocation(NPC, -19.83, -14.37, 46, 2, 0)
	MovementLoopAddLocation(NPC, -21.1, -14.38, 45.17, 2, 0)
	MovementLoopAddLocation(NPC, -23.37, -14.42, 44.39, 2, 0)
	MovementLoopAddLocation(NPC, -25.11, -14.47, 45.23, 2, 0)
	MovementLoopAddLocation(NPC, -28.76, -14.69, 48.18, 2, 0)
	MovementLoopAddLocation(NPC, -35.17, -15.41, 54.08, 2, 0)
	MovementLoopAddLocation(NPC, -40.41, -15.84, 57.5, 2, 0)
	MovementLoopAddLocation(NPC, -47.34, -16.57, 61.12, 2, 0)
	MovementLoopAddLocation(NPC, -48.5, -16.73, 62.3, 2, 0)
end

