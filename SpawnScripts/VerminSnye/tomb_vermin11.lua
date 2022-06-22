--[[
	Script Name		:	tomb_vermin11.lua
	Script Purpose	:	Waypoint Path for tomb_vermin11.lua
	Script Author	:	Devn00b
	Script Date		:	06/15/2020 01:43:08 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =12
    local level2 = 13
    local difficulty1 = 6
    local hp1 = 550
    local power1 = 185
    local difficulty2 = 6
    local hp2 = 680
    local power2 = 205
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 93.83, -0.08, -167.93, 2, 0)
	MovementLoopAddLocation(NPC, 98.96, -0.08, -175.08, 2, 0)
	MovementLoopAddLocation(NPC, 108.04, -0.12, -174.07, 2, 0)
	MovementLoopAddLocation(NPC, 117.68, 0.63, -167.1, 2, 0)
	MovementLoopAddLocation(NPC, 128.15, 0.03, -166.47, 2, 0)
	MovementLoopAddLocation(NPC, 131.01, 0.05, -162.43, 2, 0)
	MovementLoopAddLocation(NPC, 131.09, -0.03, -147.33, 2, 0)
	MovementLoopAddLocation(NPC, 132.16, -0.01, -138.1, 2, 0)
	MovementLoopAddLocation(NPC, 131.55, 0.48, -156.5, 2, 0)
	MovementLoopAddLocation(NPC, 131.25, 0.1, -163.23, 2, 0)
	MovementLoopAddLocation(NPC, 128.01, -0.14, -164.69, 2, 0)
	MovementLoopAddLocation(NPC, 118.38, 0.64, -167.82, 2, 0)
	MovementLoopAddLocation(NPC, 106.25, -0.13, -174.4, 2, 0)
	MovementLoopAddLocation(NPC, 99.32, -0.08, -174.53, 2, 0)
	MovementLoopAddLocation(NPC, 85.78, -0.08, -159.63, 2, 0)
	MovementLoopAddLocation(NPC, 83.7, -0.04, -151.86, 2, 0)
	MovementLoopAddLocation(NPC, 75.99, 0.53, -138.92, 2, 0)
	MovementLoopAddLocation(NPC, 84.27, -0.17, -152.7, 2, 0)
	MovementLoopAddLocation(NPC, 84.47, -0.08, -160.25, 2, 0)
	MovementLoopAddLocation(NPC, 81.79, -0.08, -160.62, 2, 0)
	MovementLoopAddLocation(NPC, 79.26, -0.7, -167.9, 2, 0)
	MovementLoopAddLocation(NPC, 58.7, -0.7, -167.61, 2, 0)
	MovementLoopAddLocation(NPC, 53.71, -0.08, -176.23, 2, 0)
	MovementLoopAddLocation(NPC, 37.36, -0.3, -194.63, 2, 0)
	MovementLoopAddLocation(NPC, 12.71, -0.68, -193.39, 2, 0)
	MovementLoopAddLocation(NPC, 12.89, -0.7, -204.22, 2, 0)
	MovementLoopAddLocation(NPC, 12.71, -0.68, -193.39, 2, 0)
	MovementLoopAddLocation(NPC, 37.36, -0.3, -194.63, 2, 0)
	MovementLoopAddLocation(NPC, 53.71, -0.08, -176.23, 2, 0)
	MovementLoopAddLocation(NPC, 58.7, -0.7, -167.61, 2, 0)
	MovementLoopAddLocation(NPC, 79.26, -0.7, -167.9, 2, 0)
	MovementLoopAddLocation(NPC, 81.79, -0.08, -160.62, 2, 0)
	MovementLoopAddLocation(NPC, 84.47, -0.08, -160.25, 2, 0)
	MovementLoopAddLocation(NPC, 84.27, -0.17, -152.7, 2, 0)
	MovementLoopAddLocation(NPC, 75.99, 0.53, -138.92, 2, 0)
	MovementLoopAddLocation(NPC, 83.7, -0.04, -151.86, 2, 0)
	MovementLoopAddLocation(NPC, 85.78, -0.08, -159.63, 2, 0)
	MovementLoopAddLocation(NPC, 99.32, -0.08, -174.53, 2, 0)
	MovementLoopAddLocation(NPC, 106.25, -0.13, -174.4, 2, 0)
	MovementLoopAddLocation(NPC, 118.38, 0.64, -167.82, 2, 0)
	MovementLoopAddLocation(NPC, 128.01, -0.14, -164.69, 2, 0)
	MovementLoopAddLocation(NPC, 131.25, 0.1, -163.23, 2, 0)
	MovementLoopAddLocation(NPC, 131.55, 0.48, -156.5, 2, 0)
	MovementLoopAddLocation(NPC, 132.16, -0.01, -138.1, 2, 0)
	MovementLoopAddLocation(NPC, 131.09, -0.03, -147.33, 2, 0)
	MovementLoopAddLocation(NPC, 131.01, 0.05, -162.43, 2, 0)
	MovementLoopAddLocation(NPC, 128.15, 0.03, -166.47, 2, 0)
	MovementLoopAddLocation(NPC, 117.68, 0.63, -167.1, 2, 0)
	MovementLoopAddLocation(NPC, 108.04, -0.12, -174.07, 2, 0)
	MovementLoopAddLocation(NPC, 98.96, -0.08, -175.08, 2, 0)
	MovementLoopAddLocation(NPC, 93.83, -0.08, -167.93, 2, 0)
end


