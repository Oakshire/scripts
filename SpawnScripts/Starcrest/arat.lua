--[[
    Script Name    : SpawnScripts/Starcrest/arat.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.30 08:06:31
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
    if GetSpawnLocationID(NPC)== 419680 then
	MovementLoopAddLocation(NPC, 806.45, -20.25, 261.9, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 797.59, -20.33, 253.13, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 788.87, -20.29, 245.16, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 767.91, -20.12, 239.77, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 762.24, -20.28, 246.32, 4, math.random(4,6))
	MovementLoopAddLocation(NPC, 773.48, -20.32, 240.07, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 786.38, -20.37, 248.33, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 798.76, -20.34, 252.81, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 806.34, -20.22, 264.66, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 804.18, -20.1, 251.04, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 780.33, -20.37, 249.25, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 786.81, -20.38, 247.53, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 789.89, -20.27, 246.72, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 793.61, -20.28, 251.38, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 807.79, -20.26, 254.38, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 800.02, -20.3, 259.63, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 803.51, -20.26, 261.66, 4, math.random(0,3))
	
    elseif GetSpawnLocationID(NPC)== 419699 then
	
	MovementLoopAddLocation(NPC, 815.86, -20.34, 271.7, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 818.23, -20.27, 277.37, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 824.06, -20.21, 271.17, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 820.8, -20.06, 266.11, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 816.77, -20.1, 260.98, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 808.19, -20.51, 259.54, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 799.68, -19.94, 248.91, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 786.53, -20.35, 243.66, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 775.35, -20.34, 246.2, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 769.47, -19.98, 237.71, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 747.15, -20.38, 245.71, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 725.68, -20.19, 249.99, 4, math.random(4,6))
	MovementLoopAddLocation(NPC, 731.72, -20.28, 250.51, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 745.34, -20.37, 245.99, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 754.86, -20.28, 247.35, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 762.21, -19.87, 238.95, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 775.86, -20.39, 244.7, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 784.07, -20.41, 245.02, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 786.66, -20.34, 249.29, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 794.58, -20.34, 250.79, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 803.26, -20.43, 256.96, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 810.95, -20.51, 262.17, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 815.21, -20.34, 272.68, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 808.87, -20.31, 279.96, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 812.05, -20.33, 281.06, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 812.61, -20.26, 273.38, 4, math.random(0,3))
	MovementLoopAddLocation(NPC, 825.19, -20.27, 276.23, 4, math.random(0,3))
end
end

