--[[
    Script Name    : SpawnScripts/DownBelow/bloodsaber_initiate3012.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.03 12:04:13
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
	MovementLoopAddLocation(NPC, 8.81, 0, -118.85, 2, 5)
	MovementLoopAddLocation(NPC, 6.52, 0.3, -134.7, 2, 5)
	MovementLoopAddLocation(NPC, 5.27, 0, -123.41, 2, 5)
	MovementLoopAddLocation(NPC, 9.63, 0, -123.95, 2, 5)
	MovementLoopAddLocation(NPC, 2.96, 0, -119.48, 2, 5)
	MovementLoopAddLocation(NPC, 7.71, 0, -124.12, 2, 5)
	MovementLoopAddLocation(NPC, 7.89, 0, -127.32, 2, 5)
end


