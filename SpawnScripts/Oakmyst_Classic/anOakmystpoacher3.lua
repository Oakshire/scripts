--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/anOakmystpoacher3.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.20 05:10:17
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
	MovementLoopAddLocation(NPC, 801.66, 12.97, -254.83, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 816.39, 9.05, -272.24, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 816.39, 9.05, -272.24, 2, 0)
	MovementLoopAddLocation(NPC, 808.7, 11.04, -266.87, 2, 0)
	MovementLoopAddLocation(NPC, 801.81, 11.94, -268.34, 2, 0)
	MovementLoopAddLocation(NPC, 797.55, 12.29, -273.1, 2, 0)
	MovementLoopAddLocation(NPC, 796.94, 12.6, -277.58, 2, 0)
	MovementLoopAddLocation(NPC, 798.76, 12.33, -278.81, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 798.76, 12.33, -278.81, 2, 0)
	MovementLoopAddLocation(NPC, 795.85, 12.85, -276.97, 2, 0)
	MovementLoopAddLocation(NPC, 797.34, 12.49, -264.96, 2, 0)
	MovementLoopAddLocation(NPC, 785.45, 13.35, -253.98, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 785.45, 13.35, -253.98, 2, 0)
	MovementLoopAddLocation(NPC, 788.84, 13.35, -257.92, 2, 0)
	MovementLoopAddLocation(NPC, 790.28, 13.35, -256.52, 2, 0)
	MovementLoopAddLocation(NPC, 790.86, 14.22, -254.39, 2, 0)
	MovementLoopAddLocation(NPC, 790.41, 15.02, -251.8, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 790.41, 15.02, -251.8, 2, 0)
	MovementLoopAddLocation(NPC, 790.42, 14.4, -248.72, 2, 0)
	MovementLoopAddLocation(NPC, 794.23, 13.35, -248.65, 2, 0)
	MovementLoopAddLocation(NPC, 798.76, 13.05, -255.38, 2, 0)
	MovementLoopAddLocation(NPC, 807.89, 11.69, -262.86, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 807.89, 11.69, -262.86, 2, 0)
	MovementLoopAddLocation(NPC, 796.98, 13.35, -250.92, 2, 0)
	MovementLoopAddLocation(NPC, 796.22, 13.35, -246.86, 2, 0)
	MovementLoopAddLocation(NPC, 796.44, 13.35, -247.9, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 796.44, 13.35, -247.9, 2, 0)
	MovementLoopAddLocation(NPC, 797.02, 13.35, -250.02, 2, 0)
	MovementLoopAddLocation(NPC, 802.4, 13.05, -252.87, 2, 4)
end

