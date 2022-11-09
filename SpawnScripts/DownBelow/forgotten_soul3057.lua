--[[
    Script Name    : SpawnScripts/DownBelow/forgotten_soul3057.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.24 07:04:10
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
   local Level = GetLevel(NPC)
    local level1 = 10
    local level2 = 9
    local difficulty1 = 6
    local hp1 = 370
    local power1 = 130
    local difficulty2 = 6
    local hp2 = 275
    local power2 = 110
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
    spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -204, 0.61, -92.85, 2, 0)
	MovementLoopAddLocation(NPC, -198.37, -0.05, -92.96, 2, 0)
	MovementLoopAddLocation(NPC, -197.65, -0.06, -103.05, 2, 0)
	MovementLoopAddLocation(NPC, -192.8, -0.05, -105.34, 2, 0)
	MovementLoopAddLocation(NPC, -185.12, -0.1, -105.84, 2, 0)
	MovementLoopAddLocation(NPC, -181.39, -0.03, -110.79, 2, 6)
	MovementLoopAddLocation(NPC, -183.25, -0.1, -107.5, 2, 0)
	MovementLoopAddLocation(NPC, -195.27, -0.02, -104.67, 2, 0)
	MovementLoopAddLocation(NPC, -197.31, -0.03, -99.29, 2, 0)
	MovementLoopAddLocation(NPC, -198.05, -0.06, -93.42, 2, 3)
	MovementLoopAddLocation(NPC, -189.66, -0.06, -93.36, 2, 0)
	MovementLoopAddLocation(NPC, -180.7, -0.25, -88.45, 2, 0)
	MovementLoopAddLocation(NPC, -175.88, -0.27, -74.05, 2, 0)
	MovementLoopAddLocation(NPC, -184.27, -0.08, -74.17, 2, 0)
	MovementLoopAddLocation(NPC, -188.9, 0.41, -71.88, 2, 0)
	MovementLoopAddLocation(NPC, -191.6, -0.11, -61.45, 2, 0)
	MovementLoopAddLocation(NPC, -199.35, -0.08, -60.63, 2, 0)
	MovementLoopAddLocation(NPC, -199.63, -0.08, -63.21, 2, 0)
	MovementLoopAddLocation(NPC, -199.86, -0.08, -61.04, 2, 0)
	MovementLoopAddLocation(NPC, -191.97, -0.08, -60.63, 2, 0)
	MovementLoopAddLocation(NPC, -191.1, -0.13, -55.2, 2, 0)
	MovementLoopAddLocation(NPC, -189.95, 0.47, -47.83, 2, 0)
	MovementLoopAddLocation(NPC, -181.36, -0.16, -39.12, 2, 0)
	MovementLoopAddLocation(NPC, -191.01, 0, -29.55, 2, 0)
	MovementLoopAddLocation(NPC, -201.2, 0.14, -39.42, 2, 0)
	MovementLoopAddLocation(NPC, -213.82, -0.03, -50.73, 2, 0)
	MovementLoopAddLocation(NPC, -218.21, 0.02, -57.46, 2, 0)
	MovementLoopAddLocation(NPC, -219.16, 0.16, -64.21, 2, 0)
	MovementLoopAddLocation(NPC, -219.02, -0.03, -76.38, 2, 0)
	MovementLoopAddLocation(NPC, -218.45, -0.09, -82.71, 2, 0)
	MovementLoopAddLocation(NPC, -210.28, -0.04, -91.63, 2, 0)
	MovementLoopAddLocation(NPC, -204, 0.61, -92.85, 2, 0)
end

