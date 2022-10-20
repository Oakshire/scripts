--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/anOakmystpoacher1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.20 04:10:40
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

waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 767.36, 13.35, -237.81, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 770.01, 13.35, -246.84, 2, 0)
	MovementLoopAddLocation(NPC, 773.12, 13.35, -249.11, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 773.12, 13.35, -249.11, 2, 0)
	MovementLoopAddLocation(NPC, 788.72, 13.35, -256.66, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 788.72, 13.35, -256.66, 2, 0)
	MovementLoopAddLocation(NPC, 784.75, 13.35, -253.85, 2, 0)
	MovementLoopAddLocation(NPC, 783.59, 13.35, -247.28, 2, 0)
	MovementLoopAddLocation(NPC, 780.88, 13.54, -242.02, 2, 0)
	MovementLoopAddLocation(NPC, 777.72, 13.43, -241.05, 2, 0)
	MovementLoopAddLocation(NPC, 772.4, 13.38, -242.16, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 772.4, 13.38, -242.16, 2, 0)
	MovementLoopAddLocation(NPC, 764.81, 13.35, -239.27, 2, 0)
	MovementLoopAddLocation(NPC, 758.27, 13.35, -232.06, 2, 0)
	MovementLoopAddLocation(NPC, 754.04, 13.56, -230.65, 2, 0)
	MovementLoopAddLocation(NPC, 756.03, 13.38, -231.57, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 756.03, 13.38, -231.57, 2, 0)
	MovementLoopAddLocation(NPC, 759.33, 13.39, -235.01, 2, 0)
	MovementLoopAddLocation(NPC, 759.8, 13.53, -242.86, 2, 0)
	MovementLoopAddLocation(NPC, 761.87, 13.78, -246.81, 2, 0)
	MovementLoopAddLocation(NPC, 778.96, 13.35, -250.2, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 778.96, 13.35, -250.2, 2, 0)
	MovementLoopAddLocation(NPC, 772.47, 13.35, -248.85, 2, 0)
	MovementLoopAddLocation(NPC, 772.7, 13.38, -242.34, 2, 0)
	MovementLoopAddLocation(NPC, 778.68, 13.58, -240.74, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 778.68, 13.58, -240.74, 2, 0)
	MovementLoopAddLocation(NPC, 772.84, 13.4, -241.59, 2, 0)
	MovementLoopAddLocation(NPC, 767.36, 13.35, -237.81, 2, 4)
end

