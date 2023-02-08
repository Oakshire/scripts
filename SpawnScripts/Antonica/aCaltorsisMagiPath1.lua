--[[
    Script Name    : SpawnScripts/Antonica/aCaltorsisMagiPath1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.07 09:02:42
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/Antonica_Skeleton1.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 18
    local level2 = 19
    local difficulty1 = 6
    local hp1 = 1180
    local power1 = 410
    local difficulty2 = 6
    local hp2 = 1315
    local power2 = 425
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
	MovementLoopAddLocation(NPC, -2152.83, -13.63, -499.21, 2, 4)
	MovementLoopAddLocation(NPC, -2140.77, -9.67, -490.94, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2140.77, -9.67, -490.94, 2, 0)
	MovementLoopAddLocation(NPC, -2136.97, -9.25, -483.23, 2, 0)
	MovementLoopAddLocation(NPC, -2131.97, -5.95, -486.31, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2131.97, -5.95, -486.31, 2, 0)
	MovementLoopAddLocation(NPC, -2137.07, -9.13, -484.09, 2, 0)
	MovementLoopAddLocation(NPC, -2136.54, -12.25, -473.24, 2, 0)
	MovementLoopAddLocation(NPC, -2130.27, -10.54, -468.4, 2, 0)
	MovementLoopAddLocation(NPC, -2128.14, -11.18, -464.86, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2128.14, -11.18, -464.86, 2, 0)
	MovementLoopAddLocation(NPC, -2133.91, -13.72, -467.37, 2, 0)
	MovementLoopAddLocation(NPC, -2137.42, -13.12, -472.2, 2, 0)
	MovementLoopAddLocation(NPC, -2145.96, -15.49, -473.98, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2145.96, -15.49, -473.98, 2, 0)
	MovementLoopAddLocation(NPC, -2139.45, -13.38, -474.24, 2, 0)
	MovementLoopAddLocation(NPC, -2137.9, -10.77, -479.41, 2, 0)
	MovementLoopAddLocation(NPC, -2137.12, -8.96, -485.06, 2, 0)
	MovementLoopAddLocation(NPC, -2135.96, -7.29, -490.28, 2, 0)
	MovementLoopAddLocation(NPC, -2135.06, -6.43, -492.36, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2135.06, -6.43, -492.36, 2, 0)
	MovementLoopAddLocation(NPC, -2136.89, -5.93, -500.5, 2, 0)
	MovementLoopAddLocation(NPC, -2138.39, -6.03, -506.32, 2, 0)
	MovementLoopAddLocation(NPC, -2139.47, -6.25, -510.53, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2139.47, -6.25, -510.53, 2, 0)
	MovementLoopAddLocation(NPC, -2145.53, -9.7, -509.13, 2, 0)
	MovementLoopAddLocation(NPC, -2150.61, -12.13, -507.95, 2, 0)
	MovementLoopAddLocation(NPC, -2152.83, -13.63, -499.21, 2, 3)
end

