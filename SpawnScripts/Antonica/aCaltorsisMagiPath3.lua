--[[
    Script Name    : SpawnScripts/Antonica/aCaltorsisMagiPath3.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.07 09:02:57
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
	MovementLoopAddLocation(NPC, -2123.77, -18.04, -443.68, 2, 4)
	MovementLoopAddLocation(NPC, -2135.48, -19.21, -454.43, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2135.48, -19.21, -454.43, 2, 0)
	MovementLoopAddLocation(NPC, -2127.07, -19.91, -434.45, 2, 0)
	MovementLoopAddLocation(NPC, -2118.27, -18.94, -425.26, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2118.27, -18.94, -425.26, 2, 0)
	MovementLoopAddLocation(NPC, -2114.74, -17.37, -430.01, 2, 0)
	MovementLoopAddLocation(NPC, -2109.95, -12.74, -435.26, 2, 0)
	MovementLoopAddLocation(NPC, -2104.59, -7.26, -438.42, 2, 0)
	MovementLoopAddLocation(NPC, -2099.92, -2.53, -441.17, 2, 0)
	MovementLoopAddLocation(NPC, -2096.06, 1.32, -443.44, 2, 0)
	MovementLoopAddLocation(NPC, -2093.91, 3.02, -444.71, 2, 0)
	MovementLoopAddLocation(NPC, -2089.41, 6.48, -447.37, 2, 0)
	MovementLoopAddLocation(NPC, -2084.65, 10.17, -450.17, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2084.65, 10.17, -450.17, 2, 0)
	MovementLoopAddLocation(NPC, -2085.68, 7.66, -445.27, 2, 0)
	MovementLoopAddLocation(NPC, -2087.43, 4.27, -436.88, 2, 0)
	MovementLoopAddLocation(NPC, -2089.24, -0.05, -428.25, 2, 0)
	MovementLoopAddLocation(NPC, -2091.74, -3.16, -422.28, 2, 0)
	MovementLoopAddLocation(NPC, -2094.63, -5.96, -415.38, 2, 0)
	MovementLoopAddLocation(NPC, -2098.21, -9.44, -406.84, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2098.21, -9.44, -406.84, 2, 0)
	MovementLoopAddLocation(NPC, -2099.92, -9.23, -419.54, 2, 0)
	MovementLoopAddLocation(NPC, -2102.01, -9.05, -427.8, 2, 0)
	MovementLoopAddLocation(NPC, -2108, -9.31, -439.93, 2, 0)
	MovementLoopAddLocation(NPC, -2115.22, -10.29, -450.17, 2, 0)
	MovementLoopAddLocation(NPC, -2123.66, -11.38, -459.59, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2123.66, -11.38, -459.59, 2, 0)
	MovementLoopAddLocation(NPC, -2126.76, -14.64, -458.03, 2, 0)
	MovementLoopAddLocation(NPC, -2132.06, -18.3, -455.38, 2, 0)
	MovementLoopAddLocation(NPC, -2139.66, -20.07, -451.56, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2139.66, -20.07, -451.56, 2, 0)
	MovementLoopAddLocation(NPC, -2152.4, -20.1, -462.18, 2, 0)
	MovementLoopAddLocation(NPC, -2152.4, -20.1, -462.18, 2, 0)
	MovementLoopAddLocation(NPC, -2141.36, -20.15, -452.1, 2, 0)
	MovementLoopAddLocation(NPC, -2132.57, -19.93, -441.83, 2, 0)
	MovementLoopAddLocation(NPC, -2125.29, -19.68, -432.47, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2125.29, -19.68, -432.47, 2, 0)
	MovementLoopAddLocation(NPC, -2127.78, -19.44, -438.56, 2, 0)
	MovementLoopAddLocation(NPC, -2123.77, -18.04, -443.68, 2, 3)
end

