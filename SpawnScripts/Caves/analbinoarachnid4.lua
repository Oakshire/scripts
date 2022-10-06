--[[
    Script Name    : SpawnScripts/Caves/analbinoarachnid4.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.05 11:10:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 10
    local level2 = 11
    local difficulty1 = 6
    local hp1 = 370
    local power1 = 130
    local difficulty2 = 6
    local hp2 = 430
    local power2 = 160
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
	MovementLoopAddLocation(NPC, 6.73, 37.87, -32.22, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 15.2, 37.14, -36.44, 2,  math.random(5,10))
	MovementLoopAddLocation(NPC, 15.2, 37.14, -36.44, 2, 0)
	MovementLoopAddLocation(NPC, 21.48, 37.87, -22.22, 2, 0)
	MovementLoopAddLocation(NPC, 21.29, 37.87, -22.91, 2,  math.random(5,10))
	MovementLoopAddLocation(NPC, 21.29, 37.87, -22.91, 2, 0)
	MovementLoopAddLocation(NPC, 11.29, 37.14, -44.34, 2,  math.random(5,10))
	MovementLoopAddLocation(NPC, 11.29, 37.14, -44.34, 2, 0)
	MovementLoopAddLocation(NPC, 11.22, 37.87, -57.26, 2,  math.random(5,10))
	MovementLoopAddLocation(NPC, 11.22, 37.87, -57.26, 2, 0)
	MovementLoopAddLocation(NPC, 1.32, 37.87, -43.04, 2,  math.random(5,10))
	MovementLoopAddLocation(NPC, 1.32, 37.87, -43.04, 2, 0)
	MovementLoopAddLocation(NPC, -3.74, 38.63, -54.89, 2,  math.random(5,10))
	MovementLoopAddLocation(NPC, -3.74, 38.63, -54.89, 2, 0)
	MovementLoopAddLocation(NPC, 2.37, 37.56, -67.05, 2,  math.random(5,10))
	MovementLoopAddLocation(NPC, 2.37, 37.56, -67.05, 2, 0)
	MovementLoopAddLocation(NPC, -7.78, 38.72, -48.33, 2,  math.random(5,10))
	MovementLoopAddLocation(NPC, -7.78, 38.72, -48.33, 2, 0)
	MovementLoopAddLocation(NPC, 18.87, 37.14, -33.33, 2,  math.random(5,10))
	MovementLoopAddLocation(NPC, 18.87, 37.14, -33.33, 2, 0)
	MovementLoopAddLocation(NPC, 6.73, 37.87, -32.22, 2, 0)
end

