--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/anOakmystgreatbearPatrol1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.19 03:10:06
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 11
    local level2 = 12
    local level3 = 13
    local difficulty1 = 8
    local hp1 = 930
    local power1 = 360
    local difficulty2 = 8
    local hp2 = 1205
    local power2 = 400
    local difficulty3 =8
    local hp3 = 1420
    local power3 = 485
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
     elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty3)
    SpawnSet(NPC, "hp", hp3)
    SpawnSet(NPC, "power", power3)
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
	MovementLoopAddLocation(NPC, 1001.29, 12.89, -249.44, 2, 5)
	MovementLoopAddLocation(NPC, 994.9, 12.88, -253.22, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 994.9, 12.88, -253.22, 2, 0)
	MovementLoopAddLocation(NPC, 1001.76, 12.92, -246.86, 2, 0)
	MovementLoopAddLocation(NPC, 1002.94, 13.26, -241.87, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 1002.94, 13.26, -241.87, 2, 0)
	MovementLoopAddLocation(NPC, 1001.83, 12.97, -244.99, 2, 0)
	MovementLoopAddLocation(NPC, 1004.02, 13.38, -253.47, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 1004.02, 13.38, -253.47, 2, 0)
	MovementLoopAddLocation(NPC, 998.27, 12.89, -252.32, 2, 0)
	MovementLoopAddLocation(NPC, 995.84, 12.88, -253.08, 2, 0)
	MovementLoopAddLocation(NPC, 994.92, 12.86, -256.52, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 994.92, 12.86, -256.52, 2, 0)
	MovementLoopAddLocation(NPC, 996.36, 12.88, -251.57, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 996.36, 12.88, -251.57, 2, 0)
	MovementLoopAddLocation(NPC, 994.47, 12.89, -254.24, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 994.47, 12.89, -254.24, 2, 0)
	MovementLoopAddLocation(NPC, 998.5, 12.89, -248.45, 2, 0)
	MovementLoopAddLocation(NPC, 1006.31, 13.17, -245.43, 2, 0)
	MovementLoopAddLocation(NPC, 1003.97, 13.12, -246.4, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 1003.97, 13.12, -246.4, 2, 0)
	MovementLoopAddLocation(NPC, 997, 12.88, -250.75, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 997, 12.88, -250.75, 2, 0)
	MovementLoopAddLocation(NPC, 1002.23, 13.05, -251.07, 2, 0)
	MovementLoopAddLocation(NPC, 1004.2, 13.41, -253.76, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 1004.2, 13.41, -253.76, 2, 0)
	MovementLoopAddLocation(NPC, 1001.29, 12.89, -249.44, 2, 5)
end

