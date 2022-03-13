--[[
	Script Name	: SpawnScripts/Graystone/Guile.lua
	Script Purpose	: Guile
	Script Author	: Scatman
	Script Date	: 2009.05.30
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 886.42, -24.78, -152.29, 2, 0)
	MovementLoopAddLocation(NPC, 884.14, -24.78, -145.06, 2, 0)
	MovementLoopAddLocation(NPC, 890.71, -22.63, -139.72, 2, 0)
	MovementLoopAddLocation(NPC, 887.87, -22.21, -136.36, 2, math.random(5, 20))
	MovementLoopAddLocation(NPC, 873.4, -22.21, -145.66, 2, 0)
	MovementLoopAddLocation(NPC, 858.6, -22.21, -145.22, 2, 0)
	MovementLoopAddLocation(NPC, 851.72, -22.21, -135.45, 2, math.random(5, 20))
	MovementLoopAddLocation(NPC, 849.11, -22.01, -123.11, 2, 0)
	MovementLoopAddLocation(NPC, 845.08, -22.77, -120.82, 2, 0)
	MovementLoopAddLocation(NPC, 846.78, -23.25, -108.07, 2, 0)
	MovementLoopAddLocation(NPC, 852.16, -24.75, -106.6, 2, 0)
	MovementLoopAddLocation(NPC, 879.54, -24.95, -100.6, 2, 0)
	MovementLoopAddLocation(NPC, 886.11, -22.07, -99.21, 2, math.random(5, 20))
	MovementLoopAddLocation(NPC, 893.11, -22.3, -106.56, 2, 0)
	MovementLoopAddLocation(NPC, 891.82, -22.31, -113.76, 2, math.random(5, 20))
	MovementLoopAddLocation(NPC, 896.66, -22.32, -118.73, 2, 0)
	MovementLoopAddLocation(NPC, 895.96, -22.53, -137.98, 2, 0)
	MovementLoopAddLocation(NPC, 900.89, -24.98, -140.53, 2, 0)
	MovementLoopAddLocation(NPC, 904.77, -24.94, -145.13, 2,  math.random(5, 20))
	MovementLoopAddLocation(NPC, 901.79, -24.94, -152.61, 2, 0)
--lap 2	
	MovementLoopAddLocation(NPC, 886.42, -24.78, -152.29, 2, 0)
	MovementLoopAddLocation(NPC, 884.14, -24.78, -145.06, 2,0)
	MovementLoopAddLocation(NPC, 890.71, -22.63, -139.72, 2, 0)
	MovementLoopAddLocation(NPC, 887.87, -22.21, -136.36, 2, 0)
	MovementLoopAddLocation(NPC, 873.4, -22.21, -145.66, 2, 0)
	MovementLoopAddLocation(NPC, 858.6, -22.21, -145.22, 2, 0)
	MovementLoopAddLocation(NPC, 851.72, -22.21, -135.45, 2, math.random(5, 20))
	MovementLoopAddLocation(NPC, 849.11, -22.01, -123.11, 2, 0)
	MovementLoopAddLocation(NPC, 845.08, -22.77, -120.82, 2, 0)
	MovementLoopAddLocation(NPC, 846.78, -23.25, -108.07, 2, 0)
	MovementLoopAddLocation(NPC, 852.16, -24.75, -106.6, 2, math.random(5, 20))
	MovementLoopAddLocation(NPC, 879.54, -24.95, -100.6, 2, 0)
	MovementLoopAddLocation(NPC, 886.11, -22.07, -99.21, 2, 0)
	MovementLoopAddLocation(NPC, 893.11, -22.3, -106.56, 2, 0)
	MovementLoopAddLocation(NPC, 891.82, -22.31, -113.76, 2, 0)
	MovementLoopAddLocation(NPC, 896.66, -22.32, -118.73, 2, 0)
	MovementLoopAddLocation(NPC, 895.96, -22.53, -137.98, 2, 0)
	MovementLoopAddLocation(NPC, 900.89, -24.98, -140.53, 2, math.random(5, 20))
	MovementLoopAddLocation(NPC, 904.77, -24.94, -145.13, 2, 0)
	MovementLoopAddLocation(NPC, 901.79, -24.94, -152.61, 2, 0)	
	
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end