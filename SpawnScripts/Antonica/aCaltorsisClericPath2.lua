--[[
    Script Name    : SpawnScripts/Antonica/aCaltorsisClericPath2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.07 10:02:15
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGhost1.lua")

function spawn(NPC)
    Appearance(NPC)
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


function Appearance(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",2851)    
    else
    SpawnSet(NPC,"model_type",2852)    
    end
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -2143.31, -10.15, -494.98, 2, 4)
	MovementLoopAddLocation(NPC, -2141.56, -10.34, -489.4, 2, 0)
	MovementLoopAddLocation(NPC, -2139.82, -10.53, -483.82, 2, 0)
	MovementLoopAddLocation(NPC, -2138.33, -11.1, -479.04, 2, 0)
	MovementLoopAddLocation(NPC, -2136.81, -12.07, -474.18, 2, 0)
	MovementLoopAddLocation(NPC, -2135.07, -13.74, -468.62, 2, 0)
	MovementLoopAddLocation(NPC, -2133.26, -15.66, -462.83, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2133.26, -15.66, -462.83, 2, 0)
	MovementLoopAddLocation(NPC, -2145.14, -19.91, -459.14, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2145.14, -19.91, -459.14, 2, 0)
	MovementLoopAddLocation(NPC, -2143.65, -19.42, -460.99, 2, 0)
	MovementLoopAddLocation(NPC, -2140.77, -17.56, -464.58, 2, 0)
	MovementLoopAddLocation(NPC, -2137.68, -15.06, -468.43, 2, 0)
	MovementLoopAddLocation(NPC, -2134.83, -11.76, -471.98, 2, 0)
	MovementLoopAddLocation(NPC, -2132.86, -9.79, -474.43, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2132.86, -9.79, -474.43, 2, 0)
	MovementLoopAddLocation(NPC, -2132.58, -10.32, -472.54, 2, 0)
	MovementLoopAddLocation(NPC, -2131.93, -11.72, -468.22, 2, 0)
	MovementLoopAddLocation(NPC, -2131.25, -14.16, -463.74, 2, 0)
	MovementLoopAddLocation(NPC, -2130.55, -16.12, -459.12, 2, 0)
	MovementLoopAddLocation(NPC, -2129.86, -17.62, -454.54, 2, 0)
	MovementLoopAddLocation(NPC, -2129.83, -17.66, -454.37, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2129.83, -17.66, -454.37, 2, 0)
	MovementLoopAddLocation(NPC, -2129.87, -17.22, -455.72, 2, 0)
	MovementLoopAddLocation(NPC, -2130.06, -14.52, -461.87, 2, 0)
	MovementLoopAddLocation(NPC, -2130.23, -10.94, -467.54, 2, 0)
	MovementLoopAddLocation(NPC, -2130.39, -9, -472.86, 2, 0)
	MovementLoopAddLocation(NPC, -2130.56, -7.15, -478.26, 2, 0)
	MovementLoopAddLocation(NPC, -2130.72, -5.83, -483.57, 2, 0)
	MovementLoopAddLocation(NPC, -2130.89, -4.92, -489.1, 2, 0)
	MovementLoopAddLocation(NPC, -2131.04, -4.13, -494.14, 2, 0)
	MovementLoopAddLocation(NPC, -2131.2, -3.28, -499.57, 2, 0)
	MovementLoopAddLocation(NPC, -2131.39, -2.49, -505.74, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2131.39, -2.49, -505.74, 2, 0)
	MovementLoopAddLocation(NPC, -2131.55, -3.03, -502.01, 2, 0)
	MovementLoopAddLocation(NPC, -2131.74, -3.93, -497.31, 2, 0)
	MovementLoopAddLocation(NPC, -2131.95, -4.89, -492.32, 2, 0)
	MovementLoopAddLocation(NPC, -2132.12, -5.69, -488.16, 2, 0)
	MovementLoopAddLocation(NPC, -2132.31, -6.7, -483.5, 2, 0)
	MovementLoopAddLocation(NPC, -2132.55, -8.42, -477.8, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2132.55, -8.42, -477.8, 2, 0)
	MovementLoopAddLocation(NPC, -2131.13, -7.27, -478.82, 2, 0)
	MovementLoopAddLocation(NPC, -2127.96, -4.85, -481.12, 2, 0)
	MovementLoopAddLocation(NPC, -2124.9, -2.9, -483.34, 2, 0)
	MovementLoopAddLocation(NPC, -2122.53, -1.38, -485.06, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2122.53, -1.38, -485.06, 2, 0)
	MovementLoopAddLocation(NPC, -2123.78, -2.56, -481.99, 2, 0)
	MovementLoopAddLocation(NPC, -2124.88, -3.66, -479.3, 2, 0)
	MovementLoopAddLocation(NPC, -2126.2, -5.53, -476.05, 2, 0)
	MovementLoopAddLocation(NPC, -2127.5, -7.4, -472.86, 2, 0)
	MovementLoopAddLocation(NPC, -2129.11, -9.72, -468.9, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2129.11, -9.72, -468.9, 2, 0)
	MovementLoopAddLocation(NPC, -2130.5, -9.33, -472.1, 2, 0)
	MovementLoopAddLocation(NPC, -2132.65, -8.74, -477.06, 2, 0)
	MovementLoopAddLocation(NPC, -2135.03, -8.35, -482.52, 2, 0)
	MovementLoopAddLocation(NPC, -2136.62, -8.47, -486.2, 2, 0)
	MovementLoopAddLocation(NPC, -2138.58, -8.6, -490.71, 2, 0)
	MovementLoopAddLocation(NPC, -2140.2, -8.72, -494.44, 2, 0)
	MovementLoopAddLocation(NPC, -2142.15, -8.85, -498.93, 2, 0)
	MovementLoopAddLocation(NPC, -2144.31, -9.3, -503.89, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2144.31, -9.3, -503.89, 2, 0)
	MovementLoopAddLocation(NPC, -2143.31, -10.15, -494.98, 2, 3)
end
