--[[
    Script Name    : SpawnScripts/Antonica/aCaltorsisknightPath1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.07 10:02:00
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
	MovementLoopAddLocation(NPC, -2086.6, 5.24, -438.83, 2, 4)
	MovementLoopAddLocation(NPC, -2086.36, 3.29, -431.76, 2, 0)
	MovementLoopAddLocation(NPC, -2086.12, 0.99, -425.19, 2, 0)
	MovementLoopAddLocation(NPC, -2085.91, -0.08, -419.05, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2085.91, -0.08, -419.05, 2, 0)
	MovementLoopAddLocation(NPC, -2086.98, -0.39, -421.28, 2, 0)
	MovementLoopAddLocation(NPC, -2089.6, -0.74, -426.71, 2, 0)
	MovementLoopAddLocation(NPC, -2092.52, -0.76, -432.26, 2, 0)
	MovementLoopAddLocation(NPC, -2096.19, -0.92, -438.16, 2, 0)
	MovementLoopAddLocation(NPC, -2100.33, -1.27, -444.83, 2, 0)
	MovementLoopAddLocation(NPC, -2104.9, -1.33, -452.2, 2, 0)
	MovementLoopAddLocation(NPC, -2107.78, -1.4, -456.82, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2107.78, -1.4, -456.82, 2, 0)
	MovementLoopAddLocation(NPC, -2108.05, -0.5, -459.31, 2, 0)
	MovementLoopAddLocation(NPC, -2108.59, 1.02, -464.29, 2, 0)
	MovementLoopAddLocation(NPC, -2109.24, 2.34, -470.29, 2, 0)
	MovementLoopAddLocation(NPC, -2109.67, 3.2, -474.23, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2109.67, 3.2, -474.23, 2, 0)
	MovementLoopAddLocation(NPC, -2110.89, 2.32, -474.07, 2, 0)
	MovementLoopAddLocation(NPC, -2115.46, -0.42, -473.44, 2, 0)
	MovementLoopAddLocation(NPC, -2119.45, -2.54, -472.89, 2, 0)
	MovementLoopAddLocation(NPC, -2124.72, -6.12, -472.16, 2, 0)
	MovementLoopAddLocation(NPC, -2130.09, -9.35, -471.42, 2, 0)
	MovementLoopAddLocation(NPC, -2132.97, -11.08, -471.03, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2132.97, -11.08, -471.03, 2, 0)
	MovementLoopAddLocation(NPC, -2131.02, -10.72, -469.05, 2, 0)
	MovementLoopAddLocation(NPC, -2125.94, -9.98, -464.26, 2, 0)
	MovementLoopAddLocation(NPC, -2120.94, -9.27, -459.65, 2, 0)
	MovementLoopAddLocation(NPC, -2115.8, -8.15, -454.62, 2, 0)
	MovementLoopAddLocation(NPC, -2112.21, -8.35, -449.28, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2112.21, -8.35, -449.28, 2, 0)
	MovementLoopAddLocation(NPC, -2113.41, -9.52, -449.02, 2, 0)
	MovementLoopAddLocation(NPC, -2117.81, -13.43, -448.03, 2, 0)
	MovementLoopAddLocation(NPC, -2122.47, -16.93, -446.98, 2, 0)
	MovementLoopAddLocation(NPC, -2127.78, -18.6, -445.78, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2127.78, -18.6, -445.78, 2, 0)
	MovementLoopAddLocation(NPC, -2124.29, -17.78, -446.27, 2, 0)
	MovementLoopAddLocation(NPC, -2118.92, -14.9, -446.59, 2, 0)
	MovementLoopAddLocation(NPC, -2114.34, -11.98, -445.52, 2, 0)
	MovementLoopAddLocation(NPC, -2110.59, -10.22, -442.66, 2, 0)
	MovementLoopAddLocation(NPC, -2108.76, -10.52, -438.57, 2, 0)
	MovementLoopAddLocation(NPC, -2109.71, -13.07, -433.6, 2, 0)
	MovementLoopAddLocation(NPC, -2112.63, -16.36, -428.69, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2112.63, -16.36, -428.69, 2, 0)
	MovementLoopAddLocation(NPC, -2110.23, -15.17, -427.36, 2, 0)
	MovementLoopAddLocation(NPC, -2106.86, -13.33, -425.49, 2, 0)
	MovementLoopAddLocation(NPC, -2103, -10.86, -423.34, 2, 0)
	MovementLoopAddLocation(NPC, -2099.6, -8.68, -421.45, 2, 0)
	MovementLoopAddLocation(NPC, -2098.67, -8.07, -420.94, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2098.67, -8.07, -420.94, 2, 0)
	MovementLoopAddLocation(NPC, -2097.77, -7.07, -423.01, 2, 0)
	MovementLoopAddLocation(NPC, -2095.54, -4.04, -428.18, 2, 0)
	MovementLoopAddLocation(NPC, -2093.28, -0.82, -433.4, 2, 0)
	MovementLoopAddLocation(NPC, -2091.29, 2.42, -438.02, 2, 0)
	MovementLoopAddLocation(NPC, -2089, 5.22, -443.33, 2, 0)
	MovementLoopAddLocation(NPC, -2087.08, 7.9, -447.78, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2087.08, 7.9, -447.78, 2, 0)
	MovementLoopAddLocation(NPC, -2087.23, 7.46, -446.88, 2, 0)
	MovementLoopAddLocation(NPC, -2087.66, 4.95, -439.8, 2, 0)
	MovementLoopAddLocation(NPC, -2087.66, 4.95, -439.8, 2, 3)
end

