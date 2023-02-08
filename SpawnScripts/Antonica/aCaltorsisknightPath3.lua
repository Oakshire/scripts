--[[
    Script Name    : SpawnScripts/Antonica/aCaltorsisknightPath3.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.07 10:02:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -2101.55, 3.25, -457.53, 2, 4)
	MovementLoopAddLocation(NPC, -2106.25, 2.39, -463.52, 2, 0)
	MovementLoopAddLocation(NPC, -2109.98, 1.24, -468.29, 2, 0)
	MovementLoopAddLocation(NPC, -2113.41, 0.42, -472.67, 2, 0)
	MovementLoopAddLocation(NPC, -2116.9, -0.22, -477.12, 2, 0)
	MovementLoopAddLocation(NPC, -2120.64, -0.95, -481.88, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2120.64, -0.95, -481.88, 2, 0)
	MovementLoopAddLocation(NPC, -2118.75, -0.07, -481.48, 2, 0)
	MovementLoopAddLocation(NPC, -2114.48, 1.84, -480.57, 2, 0)
	MovementLoopAddLocation(NPC, -2109.84, 4.28, -479.58, 2, 0)
	MovementLoopAddLocation(NPC, -2105.37, 6.35, -478.62, 2, 0)
	MovementLoopAddLocation(NPC, -2096.62, 10.23, -475.22, 2, 0)
	MovementLoopAddLocation(NPC, -2096.69, 9.69, -470.57, 2, 0)
	MovementLoopAddLocation(NPC, -2096.78, 9.08, -465.38, 2, 0)
	MovementLoopAddLocation(NPC, -2096.65, 8.05, -460.63, 2, 0)
	MovementLoopAddLocation(NPC, -2096.73, 5.79, -455.7, 2, 0)
	MovementLoopAddLocation(NPC, -2096.8, 3.78, -450.79, 2, 0)
	MovementLoopAddLocation(NPC, -2096.88, 1.73, -445.86, 2, 0)
	MovementLoopAddLocation(NPC, -2096.96, -0.38, -440.93, 2, 0)
	MovementLoopAddLocation(NPC, -2097.03, -2.33, -436.27, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2097.03, -2.33, -436.27, 2, 0)
	MovementLoopAddLocation(NPC, -2098.12, -2.14, -438.77, 2, 0)
	MovementLoopAddLocation(NPC, -2100.38, -1.7, -443.97, 2, 0)
	MovementLoopAddLocation(NPC, -2102.94, -0.93, -449.86, 2, 0)
	MovementLoopAddLocation(NPC, -2105.36, -0.25, -455.42, 2, 0)
	MovementLoopAddLocation(NPC, -2107.83, 0.41, -461.1, 2, 0)
	MovementLoopAddLocation(NPC, -2119.79, 0.28, -486.52, 2, 0)
	MovementLoopAddLocation(NPC, -2122.83, -2.04, -482.14, 2, 0)
	MovementLoopAddLocation(NPC, -2125.62, -4.43, -478.09, 2, 0)
	MovementLoopAddLocation(NPC, -2128.64, -7.71, -473.74, 2, 0)
	MovementLoopAddLocation(NPC, -2131.43, -10.71, -469.7, 2, 0)
	MovementLoopAddLocation(NPC, -2134.02, -14.52, -465.97, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2134.02, -14.52, -465.97, 2, 0)
	MovementLoopAddLocation(NPC, -2134.87, -13.46, -468.82, 2, 0)
	MovementLoopAddLocation(NPC, -2136.52, -11.84, -474.37, 2, 0)
	MovementLoopAddLocation(NPC, -2138.05, -10.8, -479.52, 2, 0)
	MovementLoopAddLocation(NPC, -2139.64, -10.25, -484.87, 2, 0)
	MovementLoopAddLocation(NPC, -2141.29, -10.08, -490.08, 2, 0)
	MovementLoopAddLocation(NPC, -2143.13, -9.99, -495.35, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2143.13, -9.99, -495.35, 2, 0)
	MovementLoopAddLocation(NPC, -2140.8, -9.76, -490.52, 2, 0)
	MovementLoopAddLocation(NPC, -2137.15, -8.77, -486.08, 2, 0)
	MovementLoopAddLocation(NPC, -2134.58, -8.58, -480.59, 2, 0)
	MovementLoopAddLocation(NPC, -2131.5, -8.9, -474.82, 2, 0)
	MovementLoopAddLocation(NPC, -2127.96, -8.95, -469.29, 2, 0)
	MovementLoopAddLocation(NPC, -2124.94, -9.05, -464.56, 2, 0)
	MovementLoopAddLocation(NPC, -2121.97, -9.93, -459.93, 2, 0)
	MovementLoopAddLocation(NPC, -2118.45, -10.35, -454.43, 2, 0)
	MovementLoopAddLocation(NPC, -2114.98, -10.78, -449.01, 2, 0)
	MovementLoopAddLocation(NPC, -2114.55, -10.83, -448.34, 2, 0)
	MovementLoopAddLocation(NPC, -2113.43, -9.07, -449.85, 2, 0)
	MovementLoopAddLocation(NPC, -2110.93, -5.24, -453.23, 2, 0)
	MovementLoopAddLocation(NPC, -2108.29, -1.79, -456.79, 2, 0)
	MovementLoopAddLocation(NPC, -2105.77, 1.44, -460.18, 2, 0)
	MovementLoopAddLocation(NPC, -2103.32, 4.37, -463.48, 2, 0)
	MovementLoopAddLocation(NPC, -2100.7, 7.2, -467.01, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2100.7, 7.2, -467.01, 2, 0)
	MovementLoopAddLocation(NPC, -2101.55, 3.25, -457.53, 2, 3)
end

