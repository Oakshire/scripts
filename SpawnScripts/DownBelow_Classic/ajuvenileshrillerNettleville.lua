--[[
    Script Name    : SpawnScripts/DownBelow_Classic/ajuvenileshrillerNettleville.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.09 08:11:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 4
    local level2 = 5
    local difficulty1 = 6
    local hp1 = 110
    local power1 = 55
    local difficulty2 = 6
    local hp2 = 130
    local power2 = 65
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
	MovementLoopAddLocation(NPC, -12.01, 9, 0.45, 2, 2)
	MovementLoopAddLocation(NPC, -10.66, 8.39, 5.37, 2, 0)
	MovementLoopAddLocation(NPC, -8.13, 7.73, 9.05, 2, 0)
	MovementLoopAddLocation(NPC, -2.52, 7.01, 11.49, 2, 0)
	MovementLoopAddLocation(NPC, 3.96, 5.96, 11.32, 2, 0)
	MovementLoopAddLocation(NPC, 8.23, 5.24, 7.87, 2, 0)
	MovementLoopAddLocation(NPC, 11.25, 4.65, 4.4, 2, 0)
	MovementLoopAddLocation(NPC, 11.9, 3.73, -2.5, 2, 0)
	MovementLoopAddLocation(NPC, 9.04, 2.83, -8.22, 2, 0)
	MovementLoopAddLocation(NPC, 4.54, 2.19, -11.58, 2, 0)
	MovementLoopAddLocation(NPC, -4.07, 2.09, -11.73, 2, 0)
	MovementLoopAddLocation(NPC, -9.95, 2.09, -6.98, 2, 0)
	MovementLoopAddLocation(NPC, -7.76, 2.13, -4.42, 2, 0)
	MovementLoopAddLocation(NPC, -5.75, 1.38, -3.45, 2, 0)
	MovementLoopAddLocation(NPC, -3.52, -1.96, -2.13, 2, 0)
	MovementLoopAddLocation(NPC, -1.42, -2.98, -0.88, 2, 2)
	MovementLoopAddLocation(NPC, -1.42, -2.98, -0.88, 2, 0)
	MovementLoopAddLocation(NPC, -3.51, -1.99, -2.08, 2, 0)
	MovementLoopAddLocation(NPC, -5.49, 1.64, -3.38, 2, 0)
	MovementLoopAddLocation(NPC, -6.87, 2.26, -4.22, 2, 0)
	MovementLoopAddLocation(NPC, -9.47, 2.09, -5.8, 2, 0)
	MovementLoopAddLocation(NPC, -8.86, 2.09, -8.07, 2, 0)
	MovementLoopAddLocation(NPC, -4.58, 2.09, -11.64, 2, 0)
	MovementLoopAddLocation(NPC, 2.15, 2.09, -12.11, 2, 0)
	MovementLoopAddLocation(NPC, 8.9, 2.81, -8.59, 2, 0)
	MovementLoopAddLocation(NPC, 11.27, 3.45, -4.94, 2, 0)
	MovementLoopAddLocation(NPC, 11.86, 4.05, 0.38, 2, 0)
	MovementLoopAddLocation(NPC, 10.84, 4.7, 5.12, 2, 0)
	MovementLoopAddLocation(NPC, 6.87, 5.45, 9.27, 2, 0)
	MovementLoopAddLocation(NPC, 2.99, 6.12, 11.51, 2, 0)
	MovementLoopAddLocation(NPC, -1.63, 6.84, 11.75, 2, 0)
	MovementLoopAddLocation(NPC, -5.8, 7.46, 10.27, 2, 0)
	MovementLoopAddLocation(NPC, -9.75, 8.19, 6.43, 2, 0)
	MovementLoopAddLocation(NPC, -11.32, 8.73, 2.52, 2, 0)
	MovementLoopAddLocation(NPC, -11.84, 9, 0.13, 2, 0)
end
