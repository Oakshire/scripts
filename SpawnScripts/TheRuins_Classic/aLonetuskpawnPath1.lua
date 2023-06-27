--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskpawnPath1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.06.27 02:06:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
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
	MovementLoopAddLocation(NPC, -47.37, -2.36, 34.85, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -47.37, -2.36, 34.85, 2, 0)
	MovementLoopAddLocation(NPC, -50.85, -2.5, 31.58, 2, 0)
	MovementLoopAddLocation(NPC, -54.41, -2.55, 30.49, 2, 0)
	MovementLoopAddLocation(NPC, -82.52, -2.71, 27.66, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -82.52, -2.71, 27.66, 2, 0)
	MovementLoopAddLocation(NPC, -80.7, -2.71, 26.78, 2, 0)
	MovementLoopAddLocation(NPC, -78.29, -2.7, 23.31, 2, 0)
	MovementLoopAddLocation(NPC, -76.31, -2.68, 17.8, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -76.31, -2.68, 17.8, 2, 0)
	MovementLoopAddLocation(NPC, -80.76, -2.73, 30.88, 2, 0)
	MovementLoopAddLocation(NPC, -85.72, -2.74, 34.02, 2, 0)
	MovementLoopAddLocation(NPC, -90.91, -2.71, 31.57, 2, 0)
	MovementLoopAddLocation(NPC, -88.27, -2.67, 20.71, 2, 0)
	MovementLoopAddLocation(NPC, -83.77, -2.66, 17.52, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -83.77, -2.66, 17.52, 2, 0)
	MovementLoopAddLocation(NPC, -87.75, -2.66, 19.93, 2, 0)
	MovementLoopAddLocation(NPC, -86.71, -2.68, 23.25, 2, 0)
	MovementLoopAddLocation(NPC, -83.01, -2.7, 24.89, 2, 0)
	MovementLoopAddLocation(NPC, -76.78, -2.73, 28.52, 2, 0)
	MovementLoopAddLocation(NPC, -55.68, -2.55, 29.88, 2, 0)
	MovementLoopAddLocation(NPC, -51.35, -2.5, 31.6, 2, 0)
	MovementLoopAddLocation(NPC, -48.01, -2.36, 33.88, 2, 0)
end
