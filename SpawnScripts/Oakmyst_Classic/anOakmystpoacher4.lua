--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/anOakmystpoacher4.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.20 05:10:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
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
    MovementLoopAddLocation(NPC, 794.23, 12.78, -265.02, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 794.46, 12.86, -275.63, 2, 0)
	MovementLoopAddLocation(NPC, 798.07, 12.48, -278.5, 2, 0)
	MovementLoopAddLocation(NPC, 803.85, 10.95, -279.4, 2, 0)
	MovementLoopAddLocation(NPC, 811.22, 9.54, -283.53, 2, 0)
	MovementLoopAddLocation(NPC, 814.05, 9.32, -285.62, 2, 0)
	MovementLoopAddLocation(NPC, 815.87, 9.15, -287.89, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 815.87, 9.15, -287.89, 2, 0)
	MovementLoopAddLocation(NPC, 814.44, 8.46, -283.16, 2, 0)
	MovementLoopAddLocation(NPC, 826.87, 5.62, -267.17, 2, 0)
	MovementLoopAddLocation(NPC, 831.13, 4.8, -266.52, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 831.13, 4.8, -266.52, 2, 0)
	MovementLoopAddLocation(NPC, 823.92, 5.59, -275.37, 2, 0)
	MovementLoopAddLocation(NPC, 815.28, 8.28, -276.65, 2, 0)
	MovementLoopAddLocation(NPC, 804.44, 11.5, -269.81, 2, 0)
	MovementLoopAddLocation(NPC, 798.9, 12.72, -261.11, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 798.9, 12.72, -261.11, 2, 0)
	MovementLoopAddLocation(NPC, 784.22, 13.35, -257.33, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 784.22, 13.35, -257.33, 2, 0)
	MovementLoopAddLocation(NPC, 781.47, 13.37, -261.65, 2, 0)
	MovementLoopAddLocation(NPC, 781.97, 13.35, -260.11, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 781.97, 13.35, -260.11, 2, 0)
	MovementLoopAddLocation(NPC, 788.45, 13.35, -247.19, 2, 0)
	MovementLoopAddLocation(NPC, 790.39, 13.34, -245.92, 2, 0)
	MovementLoopAddLocation(NPC, 793.7, 13.35, -246.78, 2, 0)
	MovementLoopAddLocation(NPC, 797.53, 13.52, -245.14, 2, 0)
	MovementLoopAddLocation(NPC, 796.83, 13.37, -245.95, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 796.83, 13.37, -245.95, 2, 0)
	MovementLoopAddLocation(NPC, 795.9, 13.35, -248.19, 2, 0)
	MovementLoopAddLocation(NPC, 796.46, 13.35, -251.7, 2, 0)
	MovementLoopAddLocation(NPC, 807.98, 11.76, -263.6, 2, 0)
	MovementLoopAddLocation(NPC, 823.3, 6.4, -269.76, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 823.3, 6.4, -269.76, 2, 0)
	MovementLoopAddLocation(NPC, 815.73, 8.52, -266.81, 2, 0)
	MovementLoopAddLocation(NPC, 805.13, 11.3, -270.08, 2, 0)
	MovementLoopAddLocation(NPC, 794.23, 12.78, -265.02, 2, 4)
end

