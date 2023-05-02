--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothexcavatorPath2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.01 09:05:42
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
	MovementLoopAddLocation(NPC, -25.45, -7.53, -71.37, 2, 0)
	MovementLoopAddLocation(NPC, -23.65, -7.52, -70.61, 2, 0)
	MovementLoopAddLocation(NPC, -22.72, -7.51, -68.48, 2, 0)
	MovementLoopAddLocation(NPC, -21.85, -7.61, -64.59, 2, 0)
	MovementLoopAddLocation(NPC, -18.79, -7.52, -62.22, 2, 0)
	MovementLoopAddLocation(NPC, -16.54, -7.41, -62.09, 2, 0)
	MovementLoopAddLocation(NPC, -13.95, -7.36, -62.58, 2, 0)
	MovementLoopAddLocation(NPC, -9.51, -7.34, -63.31, 2, 0)
	MovementLoopAddLocation(NPC, -2.62, -7.21, -63.93, 2, 0)
	MovementLoopAddLocation(NPC, 8.97, -5.74, -62.73, 2, 0)
	MovementLoopAddLocation(NPC, 15.26, -4.83, -62.3, 2, 0)
	MovementLoopAddLocation(NPC, 20.52, -4.34, -62.11, 2, 0)
	MovementLoopAddLocation(NPC, 21.56, -4.51, -64.5, 2, 0)
	MovementLoopAddLocation(NPC, 20.6, -5.29, -66.6, 2, 0)
	MovementLoopAddLocation(NPC, 18.59, -5.89, -66.6, 2, 0)
	MovementLoopAddLocation(NPC, 14.94, -6.56, -67.06, 2, 0)
	MovementLoopAddLocation(NPC, 12.21, -7.01, -66.74, 2, 0)
	MovementLoopAddLocation(NPC, 9.98, -8.55, -67.01, 2, 0)
	MovementLoopAddLocation(NPC, 6.13, -8.59, -67.71, 2, 0)
	MovementLoopAddLocation(NPC, 9.24, -8.61, -67.29, 2, 0)
	MovementLoopAddLocation(NPC, 11.07, -7.76, -67.1, 2, 0)
	MovementLoopAddLocation(NPC, 15.87, -6.24, -66.32, 2, 0)
	MovementLoopAddLocation(NPC, 18.84, -5.8, -66.82, 2, 0)
	MovementLoopAddLocation(NPC, 21.1, -5.06, -66.2, 2, 0)
	MovementLoopAddLocation(NPC, 21.32, -4.53, -64.29, 2, 0)
	MovementLoopAddLocation(NPC, 19.76, -4.42, -62.22, 2, 0)
	MovementLoopAddLocation(NPC, 10.58, -5.46, -62.48, 2, 0)
	MovementLoopAddLocation(NPC, -0.53, -7.1, -63.71, 2, 0)
	MovementLoopAddLocation(NPC, -7.82, -7.33, -63.52, 2, 0)
	MovementLoopAddLocation(NPC, -12.98, -7.35, -62.63, 2, 0)
	MovementLoopAddLocation(NPC, -17.03, -7.47, -61.81, 2, 0)
	MovementLoopAddLocation(NPC, -19.83, -7.5, -62.5, 2, 0)
	MovementLoopAddLocation(NPC, -21.05, -7.58, -64.14, 2, 0)
	MovementLoopAddLocation(NPC, -21.81, -7.5, -67.37, 2, 0)
	MovementLoopAddLocation(NPC, -23.13, -7.52, -69.77, 2, 0)
	MovementLoopAddLocation(NPC, -24.68, -7.53, -70.67, 2, 0)
	MovementLoopAddLocation(NPC, -25.62, -7.53, -71.06, 2, 0)
end

