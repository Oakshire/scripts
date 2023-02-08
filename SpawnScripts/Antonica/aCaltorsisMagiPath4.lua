--[[
    Script Name    : SpawnScripts/Antonica/aCaltorsisMagiPath4.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.07 09:02:47
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
	MovementLoopAddLocation(NPC, -2099.83, 10.22, -494.81, 2, 4)
	MovementLoopAddLocation(NPC, -2097.75, 10.33, -481.2, 2, 0)
	MovementLoopAddLocation(NPC, -2096.68, 10.1, -474.28, 2, 0)
	MovementLoopAddLocation(NPC, -2095.09, 9.47, -464.05, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2095.09, 9.47, -464.05, 2, 0)
	MovementLoopAddLocation(NPC, -2098.47, 8.39, -466.57, 2, 0)
	MovementLoopAddLocation(NPC, -2104.03, 6.02, -470.72, 2, 0)
	MovementLoopAddLocation(NPC, -2109.38, 3.54, -474.72, 2, 0)
	MovementLoopAddLocation(NPC, -2115.56, 0.99, -479.33, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2115.56, 0.99, -479.33, 2, 0)
	MovementLoopAddLocation(NPC, -2110.98, 2.73, -475.66, 2, 0)
	MovementLoopAddLocation(NPC, -2107.36, 5.05, -475.59, 2, 0)
	MovementLoopAddLocation(NPC, -2101.18, 8.04, -475.48, 2, 0)
	MovementLoopAddLocation(NPC, -2095.25, 10.73, -475.38, 2, 0)
	MovementLoopAddLocation(NPC, -2091.09, 11.68, -475.3, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2091.09, 11.68, -475.3, 2, 0)
	MovementLoopAddLocation(NPC, -2110.4, -3.45, -456.46, 2, 0)
	MovementLoopAddLocation(NPC, -2111.78, -1.57, -462.69, 2, 0)
	MovementLoopAddLocation(NPC, -2113.52, -0.15, -470.57, 2, 0)
	MovementLoopAddLocation(NPC, -2115.13, 0.84, -477.84, 2, 0)
	MovementLoopAddLocation(NPC, -2116.19, 1.47, -482.64, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2116.19, 1.47, -482.64, 2, 0)
	MovementLoopAddLocation(NPC, -2114.61, 1.8, -480.66, 2, 0)
	MovementLoopAddLocation(NPC, -2110.16, 3.12, -475.07, 2, 0)
	MovementLoopAddLocation(NPC, -2105.7, 4.52, -469.47, 2, 0)
	MovementLoopAddLocation(NPC, -2101.98, 5.68, -464.81, 2, 0)
	MovementLoopAddLocation(NPC, -2098.9, 6.42, -460.94, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2098.9, 6.42, -460.94, 2, 0)
	MovementLoopAddLocation(NPC, -2097.11, 8.09, -462.07, 2, 0)
	MovementLoopAddLocation(NPC, -2094.5, 9.63, -464.29, 2, 0)
	MovementLoopAddLocation(NPC, -2089.78, 11.18, -468.3, 2, 0)
	MovementLoopAddLocation(NPC, -2089.78, 11.18, -468.3, 2, 0)
	MovementLoopAddLocation(NPC, -2093.15, 10.64, -470.4, 2, 0)
	MovementLoopAddLocation(NPC, -2099.55, 8.71, -474.38, 2, 0)
	MovementLoopAddLocation(NPC, -2105.44, 6.25, -478.05, 2, 0)
	MovementLoopAddLocation(NPC, -2111.57, 3.68, -481.86, 2, 0)
	MovementLoopAddLocation(NPC, -2118.03, 1.08, -485.88, 2, 0)
	MovementLoopAddLocation(NPC, -2122.13, -0.6, -488.43, 2, 0)
	MovementLoopAddLocation(NPC, -2122.77, -0.86, -488.83, 2, 0)
	MovementLoopAddLocation(NPC, -2118.76, 1.01, -487.66, 2, 0)
	MovementLoopAddLocation(NPC, -2113.37, 3.25, -486.08, 2, 0)
	MovementLoopAddLocation(NPC, -2107.44, 5.96, -484.35, 2, 0)
	MovementLoopAddLocation(NPC, -2102.24, 8.32, -482.82, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2102.24, 8.32, -482.82, 2, 0)
	MovementLoopAddLocation(NPC, -2102.24, 8.67, -486.13, 2, 0)
	MovementLoopAddLocation(NPC, -2102.24, 9.04, -489.64, 2, 0)
	MovementLoopAddLocation(NPC, -2099.83, 10.22, -494.81, 2, 3)
end

