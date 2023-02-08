--[[
    Script Name    : SpawnScripts/Antonica/aCaltorsisknightPath2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.07 10:02:42
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
	MovementLoopAddLocation(NPC, -2114.7, -16.59, -433.84, 2, 4)
	MovementLoopAddLocation(NPC, -2113.55, -14.69, -437.28, 2, 0)
	MovementLoopAddLocation(NPC, -2113.57, -12.57, -442.67, 2, 0)
	MovementLoopAddLocation(NPC, -2115.63, -11.82, -448.11, 2, 0)
	MovementLoopAddLocation(NPC, -2118.72, -10.89, -453.88, 2, 0)
	MovementLoopAddLocation(NPC, -2118.84, -10.85, -454.12, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2119.68, -11.32, -454.45, 2, 0)
	MovementLoopAddLocation(NPC, -2123.92, -13.72, -456.13, 2, 0)
	MovementLoopAddLocation(NPC, -2128.52, -15.69, -457.95, 2, 0)
	MovementLoopAddLocation(NPC, -2133.17, -17.07, -459.8, 2, 0)
	MovementLoopAddLocation(NPC, -2134.34, -17.41, -460.26, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2134.34, -17.41, -460.26, 2, 0)
	MovementLoopAddLocation(NPC, -2132.35, -16.93, -459.25, 2, 0)
	MovementLoopAddLocation(NPC, -2128.21, -15.93, -457.14, 2, 0)
	MovementLoopAddLocation(NPC, -2123.83, -14.36, -454.91, 2, 0)
	MovementLoopAddLocation(NPC, -2119.43, -12.17, -452.67, 2, 0)
	MovementLoopAddLocation(NPC, -2115.04, -9.99, -450.43, 2, 0)
	MovementLoopAddLocation(NPC, -2109.56, -6.91, -447.64, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2109.56, -6.91, -447.64, 2, 0)
	MovementLoopAddLocation(NPC, -2109.87, -6.01, -449.91, 2, 0)
	MovementLoopAddLocation(NPC, -2110.56, -4.24, -454.94, 2, 0)
	MovementLoopAddLocation(NPC, -2111.24, -2.45, -459.93, 2, 0)
	MovementLoopAddLocation(NPC, -2111.83, -1.01, -464.18, 2, 0)
	MovementLoopAddLocation(NPC, -2112.52, 0, -469.19, 2, 0)
	MovementLoopAddLocation(NPC, -2113.19, 0.87, -474.05, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2113.19, 0.87, -474.05, 2, 0)
	MovementLoopAddLocation(NPC, -2112.68, 0.59, -471.87, 2, 0)
	MovementLoopAddLocation(NPC, -2111.48, -0.09, -466.71, 2, 0)
	MovementLoopAddLocation(NPC, -2110.33, -1.04, -461.77, 2, 0)
	MovementLoopAddLocation(NPC, -2109.09, -2.52, -456.45, 2, 0)
	MovementLoopAddLocation(NPC, -2107.92, -3.87, -451.42, 2, 0)
	MovementLoopAddLocation(NPC, -2106.74, -5.29, -446.38, 2, 0)
	MovementLoopAddLocation(NPC, -2105.58, -6.71, -441.38, 2, 0)
	MovementLoopAddLocation(NPC, -2104.26, -8.2, -435.72, 2, 0)
	MovementLoopAddLocation(NPC, -2102.94, -9.06, -430.07, 2, 0)
	MovementLoopAddLocation(NPC, -2101.91, -9.65, -425.63, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2101.91, -9.65, -425.63, 2, 0)
	MovementLoopAddLocation(NPC, -2103.46, -10.79, -425.73, 2, 0)
	MovementLoopAddLocation(NPC, -2108.37, -14.28, -426.06, 2, 0)
	MovementLoopAddLocation(NPC, -2114.03, -17.62, -426.44, 2, 0)
	MovementLoopAddLocation(NPC, -2118.81, -18.85, -426.75, 2, 0)
	MovementLoopAddLocation(NPC, -2114.7, -16.59, -433.84, 2, 3)
end

