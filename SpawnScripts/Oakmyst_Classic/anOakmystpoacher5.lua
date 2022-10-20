--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/anOakmystpoacher5.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.20 05:10:58
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
	MovementLoopAddLocation(NPC, 784.47, 13.59, -241.9, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 785.58, 13.87, -234.29, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 785.58, 13.87, -234.29, 2, 0)
	MovementLoopAddLocation(NPC, 785.36, 13.35, -244.65, 2, 0)
	MovementLoopAddLocation(NPC, 778.54, 13.35, -251.47, 2, 0)
	MovementLoopAddLocation(NPC, 766.36, 13.92, -256.4, 2, 0)
	MovementLoopAddLocation(NPC, 767.15, 13.91, -255.84, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 767.15, 13.91, -255.84, 2, 0)
	MovementLoopAddLocation(NPC, 771.61, 13.36, -242.37, 2, 0)
	MovementLoopAddLocation(NPC, 779.21, 13.55, -241.3, 2, 0)
	MovementLoopAddLocation(NPC, 788.24, 13.36, -244.33, 2, 0)
	MovementLoopAddLocation(NPC, 790.02, 14.01, -242.9, 2, 0)
	MovementLoopAddLocation(NPC, 791.88, 16.1, -241.42, 2, 0)
	MovementLoopAddLocation(NPC, 793.72, 17.93, -239.94, 2, 0)
	MovementLoopAddLocation(NPC, 796.57, 18.67, -237.65, 2, 0)
	MovementLoopAddLocation(NPC, 795.78, 18.6, -238.58, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 795.78, 18.6, -238.58, 2, 0)
	MovementLoopAddLocation(NPC, 794.39, 17.55, -240.74, 2, 0)
	MovementLoopAddLocation(NPC, 793.9, 14.58, -243.48, 2, 0)
	MovementLoopAddLocation(NPC, 793.82, 13.5, -245.71, 2, 0)
	MovementLoopAddLocation(NPC, 795.81, 13.34, -253.7, 2, 0)
	MovementLoopAddLocation(NPC, 793, 13.34, -256.2, 2, 0)
	MovementLoopAddLocation(NPC, 774.83, 13.35, -253.72, 2, 0)
	MovementLoopAddLocation(NPC, 769.1, 13.35, -248.7, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 769.1, 13.35, -248.7, 2, 0)
	MovementLoopAddLocation(NPC, 766.04, 13.35, -240.66, 2, 0)
	MovementLoopAddLocation(NPC, 766.82, 13.35, -241.43, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 766.82, 13.35, -241.43, 2, 0)
	MovementLoopAddLocation(NPC, 774.31, 13.35, -248.84, 2, 0)
	MovementLoopAddLocation(NPC, 778.22, 13.35, -249.56, 2, 0)
	MovementLoopAddLocation(NPC, 780.96, 13.35, -247.96, 2, 0)
	MovementLoopAddLocation(NPC, 784.47, 13.59, -241.9, 2, 4)
end

