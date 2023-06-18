--[[
    Script Name    : SpawnScripts/Antonica/aCaltorsisClericPath1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.07 10:02:57
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGhost1.lua")

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
Appearance(NPC)
waypoints(NPC)
end

function Appearance(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",2851)    
    else
    SpawnSet(NPC,"model_type",2852)    
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -2115.58, 3.1, -492.85, 2, 4)
	MovementLoopAddLocation(NPC, -2115.41, 2.45, -486.85, 2, 0)
	MovementLoopAddLocation(NPC, -2115.2, 1.17, -479.3, 2, 0)
	MovementLoopAddLocation(NPC, -2115.01, -0.38, -472.66, 2, 0)
	MovementLoopAddLocation(NPC, -2114.87, -1.68, -467.45, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2114.87, -1.68, -467.45, 2, 0)
	MovementLoopAddLocation(NPC, -2114.99, -1.36, -468.66, 2, 0)
	MovementLoopAddLocation(NPC, -2115.59, -0.12, -474.89, 2, 0)
	MovementLoopAddLocation(NPC, -2116.22, 1.15, -481.3, 2, 0)
	MovementLoopAddLocation(NPC, -2116.89, 1.98, -488.2, 2, 0)
	MovementLoopAddLocation(NPC, -2117.48, 2.46, -494.27, 2, 0)
	MovementLoopAddLocation(NPC, -2118.04, 2.91, -500.01, 2, 0)
	MovementLoopAddLocation(NPC, -2118.61, 3.31, -505.9, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2118.61, 3.31, -505.9, 2, 0)
	MovementLoopAddLocation(NPC, -2116.48, 4.06, -504.1, 2, 0)
	MovementLoopAddLocation(NPC, -2112.12, 5.49, -500.42, 2, 0)
	MovementLoopAddLocation(NPC, -2107.91, 7.03, -496.86, 2, 0)
	MovementLoopAddLocation(NPC, -2104.07, 8.56, -493.62, 2, 0)
	MovementLoopAddLocation(NPC, -2100.43, 10.01, -490.54, 2, 0)
	MovementLoopAddLocation(NPC, -2097.23, 11.13, -487.83, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2097.23, 11.13, -487.83, 2, 0)
	MovementLoopAddLocation(NPC, -2099.15, 10.5, -489.21, 2, 0)
	MovementLoopAddLocation(NPC, -2103.3, 8.79, -492.2, 2, 0)
	MovementLoopAddLocation(NPC, -2107.5, 7.06, -495.22, 2, 0)
	MovementLoopAddLocation(NPC, -2110.98, 5.65, -497.73, 2, 0)
	MovementLoopAddLocation(NPC, -2114.98, 4.28, -500.61, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2114.98, 4.28, -500.61, 2, 0)
	MovementLoopAddLocation(NPC, -2116.72, 3.36, -499.08, 2, 0)
	MovementLoopAddLocation(NPC, -2120.56, 1.31, -495.71, 2, 0)
	MovementLoopAddLocation(NPC, -2124.64, -1.25, -492.13, 2, 0)
	MovementLoopAddLocation(NPC, -2128.33, -3.69, -488.89, 2, 0)
	MovementLoopAddLocation(NPC, -2132.22, -6.25, -485.47, 2, 0)
	MovementLoopAddLocation(NPC, -2136.11, -9.03, -482.06, 2, 0)
	MovementLoopAddLocation(NPC, -2139.8, -11.9, -478.82, 2, 0)
	MovementLoopAddLocation(NPC, -2143.59, -14.43, -475.49, 2, 0)
	MovementLoopAddLocation(NPC, -2146.63, -16.1, -472.82, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2146.63, -16.1, -472.82, 2, 0)
	MovementLoopAddLocation(NPC, -2147.05, -15.59, -475.15, 2, 0)
	MovementLoopAddLocation(NPC, -2147.8, -14.72, -480.59, 2, 0)
	MovementLoopAddLocation(NPC, -2148.08, -13.94, -486.51, 2, 0)
	MovementLoopAddLocation(NPC, -2148.34, -13.01, -491.93, 2, 0)
	MovementLoopAddLocation(NPC, -2148.65, -11.94, -498.23, 2, 0)
	MovementLoopAddLocation(NPC, -2148.67, -11.88, -498.62, 2, 0)
	MovementLoopAddLocation(NPC, -2146.78, -11.38, -496.79, 2, 0)
	MovementLoopAddLocation(NPC, -2143.01, -10.35, -493.14, 2, 0)
	MovementLoopAddLocation(NPC, -2138.67, -9.01, -488.95, 2, 0)
	MovementLoopAddLocation(NPC, -2133.39, -7.21, -483.84, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2128.23, -5.65, -478.84, 2, 0)
	MovementLoopAddLocation(NPC, -2128.07, -5.61, -478.68, 2, 0)
	MovementLoopAddLocation(NPC, -2126.52, -4.36, -479.81, 2, 0)
	MovementLoopAddLocation(NPC, -2121.65, -1.23, -483.34, 2, 0)
	MovementLoopAddLocation(NPC, -2117.63, 1.36, -486.27, 2, 0)
	MovementLoopAddLocation(NPC, -2113.12, 3.75, -489.54, 2, 0)
	MovementLoopAddLocation(NPC, -2108.48, 6.34, -492.91, 2, 0)
	MovementLoopAddLocation(NPC, -2104.34, 8.67, -495.92, 2, 0)
	MovementLoopAddLocation(NPC, -2100.16, 10.05, -498.95, 2, 0)
	MovementLoopAddLocation(NPC, -2096.09, 11.27, -501.91, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2096.09, 11.27, -501.91, 2, 0)
	MovementLoopAddLocation(NPC, -2099.29, 10.27, -502.56, 2, 0)
	MovementLoopAddLocation(NPC, -2103.18, 9.04, -504.47, 2, 0)
	MovementLoopAddLocation(NPC, -2107.55, 7.71, -506.08, 2, 0)
	MovementLoopAddLocation(NPC, -2111.94, 6.3, -507.69, 2, 0)
	MovementLoopAddLocation(NPC, -2116.35, 4.55, -509.31, 2, 0)
	MovementLoopAddLocation(NPC, -2118.21, 3.81, -510, 2, 0)
	MovementLoopAddLocation(NPC, -2118.6, 3.49, -508.06, 2, 0)
	MovementLoopAddLocation(NPC, -2117.07, 3.54, -501.86, 2, 0)
	MovementLoopAddLocation(NPC, -2115.69, 3.46, -496.24, 2, 0)
	MovementLoopAddLocation(NPC, -2114.08, 3.37, -489.71, 2, 0)
	MovementLoopAddLocation(NPC, -2113.11, 3.35, -485.79, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2113.11, 3.35, -485.79, 2, 0)
	MovementLoopAddLocation(NPC, -2115.58, 3.1, -492.85, 2, 3)
end

