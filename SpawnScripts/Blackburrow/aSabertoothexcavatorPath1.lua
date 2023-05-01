--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothexcavatorPath1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.01 04:05:00
    Script Purpose : 
                   : 
--]]

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
	MovementLoopAddLocation(NPC, 6.72, -9.8, -86.56, 2, 0)
	MovementLoopAddLocation(NPC, 9.15, -9.73, -88.18, 2, 0)
	MovementLoopAddLocation(NPC, 11.54, -9.84, -89, 2, 0)
	MovementLoopAddLocation(NPC, 12.74, -9.73, -88.06, 2, 0)
	MovementLoopAddLocation(NPC, 15.77, -9.65, -84.56, 2, 0)
	MovementLoopAddLocation(NPC, 18.15, -9.13, -79.98, 2, 0)
	MovementLoopAddLocation(NPC, 19.77, -8.5, -77.55, 2, 0)
	MovementLoopAddLocation(NPC, 20.81, -7.18, -75.09, 2, 0)
	MovementLoopAddLocation(NPC, 24, -6.42, -71.68, 2, 0)
	MovementLoopAddLocation(NPC, 25.68, -4.26, -64.34, 2, 0)
	MovementLoopAddLocation(NPC, 22.47, -4.27, -62.78, 2, 0)
	MovementLoopAddLocation(NPC, 21.69, -4.35, -60.53, 2, 0)
	MovementLoopAddLocation(NPC, 22.38, -4.27, -59.72, 2, 0)
	MovementLoopAddLocation(NPC, 22, -4.26, -62.78, 2, 0)
	MovementLoopAddLocation(NPC, 24.96, -4.23, -63.42, 2, 0)
	MovementLoopAddLocation(NPC, 27.62, -3.86, -62.86, 2, 0)
	MovementLoopAddLocation(NPC, 28.74, -3.41, -60.65, 2, 0)
	MovementLoopAddLocation(NPC, 34.29, -2.56, -58.69, 2, 0)
	MovementLoopAddLocation(NPC, 38.2, -1.81, -55.77, 2, 0)
	MovementLoopAddLocation(NPC, 39.25, -1.45, -53, 2, 0)
	MovementLoopAddLocation(NPC, 38.49, -1.05, -50.19, 2, 0)
	MovementLoopAddLocation(NPC, 39.1, -1.38, -52.67, 2, 0)
	MovementLoopAddLocation(NPC, 37.95, -1.82, -55.9, 2, 0)
	MovementLoopAddLocation(NPC, 35.29, -2.31, -57.9, 2, 0)
	MovementLoopAddLocation(NPC, 29.63, -3.28, -60.19, 2, 0)
	MovementLoopAddLocation(NPC, 27.36, -3.78, -62.12, 2, 0)
	MovementLoopAddLocation(NPC, 23.82, -4.25, -63.35, 2, 0)
	MovementLoopAddLocation(NPC, 22.31, -4.12, -62.5, 2, 0)
	MovementLoopAddLocation(NPC, 22.7, -4.25, -60.57, 2, 0)
	MovementLoopAddLocation(NPC, 27.59, -3.56, -61.58, 2, 0)
	MovementLoopAddLocation(NPC, 26.24, -4.36, -65.4, 2, 0)
	MovementLoopAddLocation(NPC, 25.81, -4.96, -67.36, 2, 0)
	MovementLoopAddLocation(NPC, 24.22, -6.4, -71.18, 2, 0)
	MovementLoopAddLocation(NPC, 21.29, -6.86, -74.29, 2, 0)
	MovementLoopAddLocation(NPC, 19.64, -8.58, -77.73, 2, 0)
	MovementLoopAddLocation(NPC, 17.71, -9.28, -80.79, 2, 0)
	MovementLoopAddLocation(NPC, 16.82, -9.63, -83.88, 2, 0)
	MovementLoopAddLocation(NPC, 14.92, -9.77, -86.93, 2, 0)
	MovementLoopAddLocation(NPC, 12.88, -9.89, -88.94, 2, 0)
	MovementLoopAddLocation(NPC, 9.73, -9.84, -87.53, 2, 0)
	MovementLoopAddLocation(NPC, 6.72, -9.8, -86.56, 2, 0)
end