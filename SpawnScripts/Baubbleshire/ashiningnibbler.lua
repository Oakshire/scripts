--[[
    Script Name    : SpawnScripts/Baubbleshire/ashiningnibbler.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.24 02:08:19
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 1
    local level2 = 2
    local level3 = 3
    local difficulty1 = 6
    local hp1 = 30
    local power1 = 25
    local difficulty2 = 6
    local hp2 = 45
    local power2 = 35
    local difficulty3 =6
    local hp3 = 75
    local power3 = 45
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
     elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty3)
    SpawnSet(NPC, "hp", hp3)
    SpawnSet(NPC, "power", power3)
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
    if GetSpawnLocationID(NPC)== 133774181 then	
    MovementLoopAddLocation(NPC, 853.12, -23.19, -412.03, 5, math.random(0,8))
	MovementLoopAddLocation(NPC, 848.99, -23.32, -413.88, 5, math.random(0,8))
	MovementLoopAddLocation(NPC, 850.68, -23.49, -414.74, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 854.22, -23.85, -412.96, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 852.93, -23.48, -411.9, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 850.92, -23.31, -414.11, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 851.2, -22.78, -419.48, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 851.94, -23.42, -429.68, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 846.72, -23.23, -424.32, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 854.63, -23, -425.02, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 855.31, -21.73, -426.17, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 851.14, -22.14, -436.13, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 853.22, -21.68, -439.45, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 860.29, -22.72, -453.75, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 870.02, -22.47, -454.39, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 877.04, -22.47, -459.49, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 874.56, -21.81, -462.99, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 875.77, -22.33, -473.52, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 879.59, -21.83, -490.45, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 887.26, -21.99, -497.44, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 882.33, -21.81, -495.84, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 875.08, -21.78, -501.64, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 867.19, -21.6, -500.51, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 861.61, -22.53, -496.42, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 846.37, -21.61, -495.26, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 845.09, -21.7, -487.92, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 853.14, -21.73, -475.87, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 863.22, -21.76, -473.06, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 873.75, -22.89, -467.31, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 877.3, -22.89, -462.12, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 873.12, -22.89, -457.15, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 862.92, -22.88, -455.3, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 856.37, -22.88, -453.65, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 851.96, -22.88, -444.63, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 855.8, -22.88, -436.81, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 857.25, -22.88, -435.91, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 859.98, -22.88, -434.13, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 859.97, -22.73, -431.94, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 853.96, -22.57, -424.14, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 847.34, -22.57, -425.74, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 844.82, -22.44, -421.74, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 847.02, -22.83, -416.42, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 853.57, -22.83, -415.02, 5, math.random(0,2))

    elseif GetSpawnLocationID(NPC)== 133774182 then	
	MovementLoopAddLocation(NPC, 860.84, -21.92, -502.59, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 858.95, -21.57, -502.19, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 860.96, -21.53, -497.35, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 864.73, -22.53, -498.84, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 865.86, -21.94, -501.89, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 864.72, -21.64, -504, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 867.44, -21.66, -502.1, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 872.46, -21.81, -503.02, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 882.63, -23.04, -500.2, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 883.54, -22.94, -495.03, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 878.91, -22.58, -492.55, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 878.32, -21.78, -486.6, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 876.56, -22.59, -476.09, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 872.23, -23.4, -470.75, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 876.53, -23.17, -469.08, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 880.16, -23.82, -461.72, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 878.19, -23.21, -456.22, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 870.74, -22.72, -454.9, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 859.88, -22.66, -454.41, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 854.04, -22.66, -444.01, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 854.02, -22.66, -438.35, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 852.5, -22.66, -428.4, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 855.64, -22.66, -424.87, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 850.32, -22.66, -427.29, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 854.83, -22.66, -427.48, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 851.64, -22.25, -418.45, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 849.46, -23.47, -414.11, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 849.46, -23.47, -414.11, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 854.64, -23.27, -412.25, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 849.86, -22.33, -415.34, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 845.2, -22.76, -418.16, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 846.52, -22.69, -424.49, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 850.63, -23.93, -433.77, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 852.17, -23.17, -445.88, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 862.32, -23.12, -455.07, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 871.03, -22.89, -455.07, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 873.42, -22.82, -462.42, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 872.03, -22.82, -470.25, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 867.03, -22.47, -469.84, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 863.1, -22.46, -474.19, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 853.1, -21.87, -473.29, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 849.61, -21.84, -478.81, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 847.68, -21.67, -482.89, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 840.04, -21.84, -491.99, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 843.37, -21.84, -496.23, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 844.21, -21.96, -491.5, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 850.66, -21.8, -497.16, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 857.54, -21.88, -500.74, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 861.02, -21.81, -503.77, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 863.37, -21.82, -505.28, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 861.6, -22.17, -500.51, 5, math.random(0,2))
	MovementLoopAddLocation(NPC, 862.22, -21.93, -503.26, 5, math.random(0,8))
	MovementLoopAddLocation(NPC, 865.07, -22.16, -503.57, 5, math.random(0,8))
end
end

