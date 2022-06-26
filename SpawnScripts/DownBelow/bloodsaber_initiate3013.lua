--[[
    Script Name    : SpawnScripts/DownBelow/bloodsaber_initiate3013.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.03 10:04:10
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 7
    local level2 = 8
    local difficulty1 = 6
     local hp1 = 200
    local power1 = 90
    local difficulty2 = 6
    local hp2 = 240
    local power2 = 100
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
	MovementLoopAddLocation(NPC, 1.86, 0.24, -137.53, 2, 9)
	MovementLoopAddLocation(NPC, -0.65, 0, -136.88, 2, 5)
	MovementLoopAddLocation(NPC, 3.06, 0.15, -134.4, 2, 5)
	MovementLoopAddLocation(NPC, -4.57, -1.62, -138.86, 2, 5)
	MovementLoopAddLocation(NPC, -10.81, -4, -137.86, 2, 5)
	MovementLoopAddLocation(NPC, -1.94, -0.26, -136.45, 2, 5)
	MovementLoopAddLocation(NPC, -2.67, -0.66, -138.4, 2, 5)
	MovementLoopAddLocation(NPC, 2.13, 0.3, -139.04, 2, 5)
	MovementLoopAddLocation(NPC, -11.9, -4, -139.9, 2, 5)
	MovementLoopAddLocation(NPC, 2.29, 0.3, -137.74, 2, 5)
end


