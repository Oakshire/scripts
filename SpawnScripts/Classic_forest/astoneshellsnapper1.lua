--[[
    Script Name    : SpawnScripts/Classic_forest/astoneshellsnapper1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 03:10:50
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local level3 = 7
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
    local difficulty3 =6
    local hp3 = 200
    local power3 = 90
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
	MovementLoopAddLocation(NPC, 960.68, -24.05, -577.75, 1, 0)
	MovementLoopAddLocation(NPC, 966.67, -26.64, -584.45, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 966.67, -26.64, -584.45, 1, 0)
	MovementLoopAddLocation(NPC, 971.99, -25.25, -583.13, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 971.99, -25.25, -583.13, 1, 0)
	MovementLoopAddLocation(NPC, 972.92, -23.41, -579.01, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 972.92, -23.41, -579.01, 1, 0)
	MovementLoopAddLocation(NPC, 967.17, -23, -575.46, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 967.17, -23, -575.46, 1, 0)
	MovementLoopAddLocation(NPC, 963.16, -25.78, -581.93, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 963.16, -25.78, -581.93, 1, 0)
	MovementLoopAddLocation(NPC, 961.61, -26.88, -584.15, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 961.61, -26.88, -584.15, 1, 0)
	MovementLoopAddLocation(NPC, 959.02, -25.54, -580.57, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 959.02, -25.54, -580.57, 1, 0)
	MovementLoopAddLocation(NPC, 958.39, -23.66, -576.73, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 958.39, -23.66, -576.73, 1, 0)
	MovementLoopAddLocation(NPC, 960.68, -24.05, -577.75, 1, math.random(5,10))
end

