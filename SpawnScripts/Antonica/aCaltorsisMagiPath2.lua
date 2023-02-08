--[[
    Script Name    : SpawnScripts/Antonica/aCaltorsisMagiPath2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.07 09:02:32
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
	MovementLoopAddLocation(NPC, -2133.97, -6.08, -491.21, 2, 4)
	MovementLoopAddLocation(NPC, -2125.44, -3.17, -483.44, 2, 0)
	MovementLoopAddLocation(NPC, -2118.36, -0.99, -476.97, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2118.36, -0.99, -476.97, 2, 0)
	MovementLoopAddLocation(NPC, -2125.59, -3.02, -484.71, 2, 0)
	MovementLoopAddLocation(NPC, -2130.66, -4.24, -492.39, 2, 0)
	MovementLoopAddLocation(NPC, -2134.11, -4.71, -499.61, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2134.11, -4.71, -499.61, 2, 0)
	MovementLoopAddLocation(NPC, -2130.22, -3.22, -497.08, 2, 0)
	MovementLoopAddLocation(NPC, -2123.7, -0.65, -492.83, 2, 0)
	MovementLoopAddLocation(NPC, -2117.81, 1.68, -488.99, 2, 0)
	MovementLoopAddLocation(NPC, -2111.31, 4.12, -484.76, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2111.31, 4.12, -484.76, 2, 0)
	MovementLoopAddLocation(NPC, -2109.78, 4.13, -477.99, 2, 0)
	MovementLoopAddLocation(NPC, -2104.54, 4.41, -466.42, 2, 0)
	MovementLoopAddLocation(NPC, -2101.18, 5.12, -461.57, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2101.18, 5.12, -461.57, 2, 0)
	MovementLoopAddLocation(NPC, -2108.03, 2.3, -467.35, 2, 0)
	MovementLoopAddLocation(NPC, -2114.46, -0.58, -470.72, 2, 0)
	MovementLoopAddLocation(NPC, -2120.88, -2.96, -474.09, 2, 0)
	MovementLoopAddLocation(NPC, -2127.09, -5.55, -477.35, 2, 0)
	MovementLoopAddLocation(NPC, -2131.94, -7.35, -479.9, 2, 0)
	MovementLoopAddLocation(NPC, -2140.13, -10.61, -484.2, 2, 0)
	MovementLoopAddLocation(NPC, -2146.21, -12.93, -487.39, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2146.21, -12.93, -487.39, 2, 0)
	MovementLoopAddLocation(NPC, -2150.41, -15.75, -479.71, 2, 0)
	MovementLoopAddLocation(NPC, -2151.44, -16.78, -476.13, 2, 0)
	MovementLoopAddLocation(NPC, -2152.26, -19.13, -469.43, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2152.26, -19.13, -469.43, 2, 0)
	MovementLoopAddLocation(NPC, -2149.88, -16.95, -473.5, 2, 0)
	MovementLoopAddLocation(NPC, -2146.22, -14.33, -479.93, 2, 0)
	MovementLoopAddLocation(NPC, -2136.33, -6.3, -496.74, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2136.33, -6.3, -496.74, 2, 0)
	MovementLoopAddLocation(NPC, -2133.97, -6.08, -491.21, 2, 3)
end

