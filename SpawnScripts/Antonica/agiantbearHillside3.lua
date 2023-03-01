--[[
    Script Name    : SpawnScripts/Antonica/agiantbearHillside3.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.28 09:02:51
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 19
    local level2 = 20
    local difficulty1 = 6
    local hp1 = 1440
    local power1 = 425
    local difficulty2 = 6
    local hp2 = 1930
    local power2 = 475
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
    
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -2077.01, -21.87, 307.84, 2, 0)
	MovementLoopAddLocation(NPC, -2082.17, -16.97, 296.63, 2, 0)
	MovementLoopAddLocation(NPC, -2086.32, -13.72, 287.61, 2, 0)
	MovementLoopAddLocation(NPC, -2089.99, -11.11, 279.62, 2, 0)
	MovementLoopAddLocation(NPC, -2094.45, -9.34, 269.93, 2, 0)
	MovementLoopAddLocation(NPC, -2099.57, -9.56, 263.09, 2, 0)
	MovementLoopAddLocation(NPC, -2106.08, -10.55, 255.18, 2, 0)
	MovementLoopAddLocation(NPC, -2114.06, -11.4, 245.49, 2, 0)
	MovementLoopAddLocation(NPC, -2120.85, -13.2, 237.24, 2, 0)
	MovementLoopAddLocation(NPC, -2128.83, -15.14, 227.55, 2, 0)
	MovementLoopAddLocation(NPC, -2129.76, -15.6, 228.03, 2, 0)
	MovementLoopAddLocation(NPC, -2127.26, -16.13, 237.65, 2, 0)
	MovementLoopAddLocation(NPC, -2124.91, -16.34, 246.7, 2, 0)
	MovementLoopAddLocation(NPC, -2124.86, -16.85, 255.33, 2, 0)
	MovementLoopAddLocation(NPC, -2122.17, -16.54, 263.75, 2, 0)
	MovementLoopAddLocation(NPC, -2116.64, -16.6, 272.63, 2, 0)
	MovementLoopAddLocation(NPC, -2111.16, -18.16, 281.43, 2, 0)
	MovementLoopAddLocation(NPC, -2105.45, -19.51, 290.6, 2, 0)
	MovementLoopAddLocation(NPC, -2102.06, -21.13, 298.26, 2, 0)
	MovementLoopAddLocation(NPC, -2099.58, -23.7, 306.33, 2, 0)
	MovementLoopAddLocation(NPC, -2097.39, -26.57, 313.45, 2, 0)
	MovementLoopAddLocation(NPC, -2095.02, -31.03, 321.15, 2, 0)
	MovementLoopAddLocation(NPC, -2092.38, -35.77, 329.76, 2, 0)
	MovementLoopAddLocation(NPC, -2094.96, -34.39, 326.17, 2, 0)
	MovementLoopAddLocation(NPC, -2100.17, -29.91, 317.54, 2, 0)
	MovementLoopAddLocation(NPC, -2105.02, -26.64, 309.5, 2, 0)
	MovementLoopAddLocation(NPC, -2107.78, -24.21, 301.46, 2, 0)
	MovementLoopAddLocation(NPC, -2109.39, -21.46, 293, 2, 0)
	MovementLoopAddLocation(NPC, -2110.99, -18.92, 284.53, 2, 0)
	MovementLoopAddLocation(NPC, -2112.77, -16.65, 275.12, 2, 0)
	MovementLoopAddLocation(NPC, -2114.09, -15.46, 268.15, 2, 0)
	MovementLoopAddLocation(NPC, -2113.97, -15.42, 267.83, 2, 0)
	MovementLoopAddLocation(NPC, -2110.65, -13.31, 259.31, 2, 0)
	MovementLoopAddLocation(NPC, -2107.54, -10.21, 251.32, 2, 0)
	MovementLoopAddLocation(NPC, -2104.53, -7.6, 243.61, 2, 0)
	MovementLoopAddLocation(NPC, -2101.21, -4.97, 235.06, 2, 0)
	MovementLoopAddLocation(NPC, -2098.01, -2.47, 226.85, 2, 0)
	MovementLoopAddLocation(NPC, -2094.75, -0.52, 218.48, 2, 0)
	MovementLoopAddLocation(NPC, -2090.8, 0.48, 217.19, 2, 0)
	MovementLoopAddLocation(NPC, -2084.9, 1.37, 221.32, 2, 0)
	MovementLoopAddLocation(NPC, -2078.29, 2.38, 225.95, 2, 0)
	MovementLoopAddLocation(NPC, -2070.91, 3.71, 231.12, 2, 0)
	MovementLoopAddLocation(NPC, -2065.22, 4.75, 235.1, 2, 0)
	MovementLoopAddLocation(NPC, -2066.58, 4.47, 234.83, 2, 0)
	MovementLoopAddLocation(NPC, -2074.51, 2.68, 233.28, 2, 0)
	MovementLoopAddLocation(NPC, -2085.34, 0.37, 231.15, 2, 0)
	MovementLoopAddLocation(NPC, -2094.7, -1.78, 229.31, 2, 0)
	MovementLoopAddLocation(NPC, -2103.9, -4.67, 227.51, 2, 0)
	MovementLoopAddLocation(NPC, -2114.01, -8.32, 225.52, 2, 0)
	MovementLoopAddLocation(NPC, -2116.98, -9.87, 226.38, 2, 0)
	MovementLoopAddLocation(NPC, -2123.36, -13.53, 232.07, 2, 0)
	MovementLoopAddLocation(NPC, -2129.23, -16.97, 237.31, 2, 0)
	MovementLoopAddLocation(NPC, -2134.15, -19.74, 241.71, 2, 0)
	MovementLoopAddLocation(NPC, -2134.84, -19.84, 245.14, 2, 0)
	MovementLoopAddLocation(NPC, -2131.04, -18.48, 251.55, 2, 0)
	MovementLoopAddLocation(NPC, -2126.81, -17.61, 258.66, 2, 0)
	MovementLoopAddLocation(NPC, -2123.3, -16.91, 264.58, 2, 0)
	MovementLoopAddLocation(NPC, -2119.92, -16.49, 270.28, 2, 0)
	MovementLoopAddLocation(NPC, -2115.56, -17, 274.59, 2, 0)
	MovementLoopAddLocation(NPC, -2110.11, -17.24, 278.68, 2, 0)
	MovementLoopAddLocation(NPC, -2102.88, -16.96, 284.11, 2, 0)
	MovementLoopAddLocation(NPC, -2095.08, -16.96, 289.96, 2, 0)
	MovementLoopAddLocation(NPC, -2087.19, -17.56, 295.88, 2, 0)
	MovementLoopAddLocation(NPC, -2077.01, -21.87, 307.84, 2, 0)
end