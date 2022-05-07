--[[
    Script Name    : SpawnScripts/Caves/Slaverjaw.lua
    Script Author  : Dorbin
    Script Date    : 2022.5.6
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 39.98, 38.67, -118.45, 1, 6)
	MovementLoopAddLocation(NPC, 40.11, 37.93, -104.9, 1, 0)
	MovementLoopAddLocation(NPC, 38.73, 38.19, -91.31, 1, 6)
	MovementLoopAddLocation(NPC, 38.03, 38.4, -83.47, 1, 0)
	MovementLoopAddLocation(NPC, 27.81, 37.87, -75.09, 1, 0)
	MovementLoopAddLocation(NPC, 17.27, 37.8, -68.93,1, 0)
	MovementLoopAddLocation(NPC, 6.73, 37.87, -62.77, 1, 0)
	MovementLoopAddLocation(NPC, -0.92, 37.87, -58.3, 1, 0)
	MovementLoopAddLocation(NPC, 3.71, 37.63, -50.32, 1, 6)
	MovementLoopAddLocation(NPC, 7.51, 37.14, -47.11, 1, 0)
	MovementLoopAddLocation(NPC, 10.52, 37.87, -60.01, 1, 0)
	MovementLoopAddLocation(NPC, 18.13, 37.87, -86.82, 1, 0)
	MovementLoopAddLocation(NPC, 23.21, 37.45, -98.66, 1, 0)
	MovementLoopAddLocation(NPC, 28.82, 38.44, -85.74, 1, 0)
	MovementLoopAddLocation(NPC, 36.21, 37.87, -71.82, 1, 0)
	MovementLoopAddLocation(NPC, 44.32, 37.98, -67.47, 1, 6)
	MovementLoopAddLocation(NPC, 55.94, 38.14, -70.69, 1, 0)
	MovementLoopAddLocation(NPC, 62.55, 37.77, -75.56, 1, 0)
	MovementLoopAddLocation(NPC, 68.47, 36.97, -77.38, 1, 0)
	MovementLoopAddLocation(NPC, 74.24, 36.19, -76.6, 1, 10)
	MovementLoopAddLocation(NPC, 78.53, 35.58, -72.27, 1, 0)
	MovementLoopAddLocation(NPC, 79.97, 34.5, -65.91, 1, 0)
	MovementLoopAddLocation(NPC, 78.85, 31.96, -60.98, 1, 0)
	MovementLoopAddLocation(NPC, 74.26, 29.03, -55.63, 1, 0)
	MovementLoopAddLocation(NPC, 69.88, 28.18, -54.1, 1, 0)
	MovementLoopAddLocation(NPC, 62.62, 25.95, -59.98, 1, 0)
	MovementLoopAddLocation(NPC, 58.56, 24.39, -68.85, 1, 0)
	MovementLoopAddLocation(NPC, 57.89, 24.17, -71.35, 1, 0)
	MovementLoopAddLocation(NPC, 61.84, 20.89, -78.48, 1, 0)
	MovementLoopAddLocation(NPC, 64.77, 18, -85.6, 1, 5)
	MovementLoopAddLocation(NPC, 65.87, 16.03, -91.39, 1, 0)
	MovementLoopAddLocation(NPC, 60.52, 12.33, -103.95, 1, 6)
	MovementLoopAddLocation(NPC, 56.79, 12.36, -103.16, 1, 0)
	MovementLoopAddLocation(NPC, 53.18, 12.38, -98.18, 1, 0)
	MovementLoopAddLocation(NPC, 55.05, 12.38, -91.6, 1, 0)
	MovementLoopAddLocation(NPC, 45.34, 12.38, -99.6, 1, 0)
	MovementLoopAddLocation(NPC, 38.18, 12.38, -107.62, 1, 0)
	MovementLoopAddLocation(NPC, 43.68, 12.38, -113.29, 1, 0)
	MovementLoopAddLocation(NPC, 52.64, 12.97, -111.25,1, 0)
	MovementLoopAddLocation(NPC, 59.17, 12.3, -108.31, 1, 0)
	MovementLoopAddLocation(NPC, 62.71, 13.97, -97.85, 1, 0)
	MovementLoopAddLocation(NPC, 66.1, 17.01, -88.05, 1, 0)
	MovementLoopAddLocation(NPC, 62.79, 20.71, -78.85, 1, 0)
	MovementLoopAddLocation(NPC, 57.46, 24.24, -71.06, 1, 0)
	MovementLoopAddLocation(NPC, 61.91, 25.64, -60.95, 1, 0)
	MovementLoopAddLocation(NPC, 70.49, 28.26, -54.72, 1, 0)
	MovementLoopAddLocation(NPC, 74.36, 29.15, -55.83, 1, 6)
	MovementLoopAddLocation(NPC, 80.23, 34.39, -65.07, 1, 0)
	MovementLoopAddLocation(NPC, 77.95, 35.69, -72.73, 1, 0)
	MovementLoopAddLocation(NPC, 72.35, 36.31, -76.77, 1, 0)
	MovementLoopAddLocation(NPC, 64.48, 37.53, -76.44, 1, 0)
	MovementLoopAddLocation(NPC, 50.51, 37.91, -68.14, 1, 0)
	MovementLoopAddLocation(NPC, 38.56, 38.19, -66.6,1, 0)
	MovementLoopAddLocation(NPC, 43.55, 37.87, -93.1, 1, 0)
end
