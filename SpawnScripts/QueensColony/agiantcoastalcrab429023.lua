--[[
    Script Name    : SpawnScripts/QueensColony/agiantcoastalcrab429023.lua
	Script Purpose	:	Waypoint Path for giantcrab_024_02.lua
	Script Author	:	Rylec
	Script Date		:	04-06-2020 05:02:48 
	Script Notes	:	Locations collected from Live
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
	MovementLoopAddLocation(NPC, 53.37, -10.07, -31.52, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, 55.7, -8.9, -32.19, 2, 0)
	MovementLoopAddLocation(NPC, 55.73, -8.78, -29.55, 2, 0)
	MovementLoopAddLocation(NPC, 61.52, -8.19, -23.7, 2, 0)
	MovementLoopAddLocation(NPC, 63.16, -8.94, -23.28, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 68.87, -9.29, -24.76, 2, 0)
	MovementLoopAddLocation(NPC, 72.93, -10.10, -29.15, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 65.53, -6.69, -28.71, 2, 0)
	MovementLoopAddLocation(NPC, 64.1, -6.71, -32.02, 2, 0)
	MovementLoopAddLocation(NPC, 61.03, -7.65, -34.38, 2, 0)
	MovementLoopAddLocation(NPC, 49.64, -12.03, -30.93, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 59.69, -6.85, -28.23, 2, 0)
	MovementLoopAddLocation(NPC, 61.38, -7.6, -24.69, 2, 0)
	MovementLoopAddLocation(NPC, 62.18, -10.74, -22.02, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 61.91, -9.63, -22.68, 2, 0)
	MovementLoopAddLocation(NPC, 63.79, -8.79, -23.34, 2, 0)
	MovementLoopAddLocation(NPC, 70.46, -8.79, -28.19, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 62.92, -8.51, -23.66, 2, 0)
	MovementLoopAddLocation(NPC, 60.39, -8.09, -24.56, 2, 0)
	MovementLoopAddLocation(NPC, 58.29, -7.76, -26.16, 2, 0)
	MovementLoopAddLocation(NPC, 54.82, -9.76, -27.56, 2, 0)
	MovementLoopAddLocation(NPC, 51.83, -11.74, -27.9, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 54.33, -10, -27.85, 2, 0)
	MovementLoopAddLocation(NPC, 55.77, -8.73, -29.06, 2, 0)
	MovementLoopAddLocation(NPC, 55.94, -8.59, -30.93, 2, 0)
	MovementLoopAddLocation(NPC, 53.92, -9.85, -31.21, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 67.97, -7.58, -28.27, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 55.95, -8.59, -29.8, 2, 0)

end

