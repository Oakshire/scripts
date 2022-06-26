--[[
    Script Name    : SpawnScripts/DownBelow/bloodsaber_meddler3020.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.03 10:04:18
    Script Purpose : 
                   : 
--]]


function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 7
    local level2 = 8
    local difficulty1 = 4
    local hp1 = 100
    local power1 = 40
    local difficulty2 = 4
    local hp2 = 120
    local power2 = 50
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
	MovementLoopAddLocation(NPC, -1.78, -0.19, -138.89, 2, 5)
	MovementLoopAddLocation(NPC, -11.87, -4, -136.92, 2, 5)
	MovementLoopAddLocation(NPC, 0.33, 0, -138.86, 2, 5)
	MovementLoopAddLocation(NPC, -12.88, -4, -139.03, 2, 5)
	MovementLoopAddLocation(NPC, -10.09, -4, -136.51, 2, 5)
	MovementLoopAddLocation(NPC, -10.66, -4, -138.13, 2, 5)
	MovementLoopAddLocation(NPC, 3.14, 0.3, -136.79, 2, 5)
	MovementLoopAddLocation(NPC, -2.02, -0.34, -139.2, 2, 5)
	MovementLoopAddLocation(NPC, -11.75, -4, -136.81, 2, 5)
	MovementLoopAddLocation(NPC, 0.08, 0, -139.13, 2, 5)
end


