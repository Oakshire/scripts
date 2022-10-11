--[[
    Script Name    : SpawnScripts/classic_caves/analabastergolemPatrol.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.03 09:09:10
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGolem1.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 7
    local level2 = 8
    local difficulty1 = 6
    local hp1 = 200
    local power1 = 90
    local difficulty2 = 6
    local hp2 = 240
    local power2 = 100
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

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 3.29, 12.05, -107.54, 1, 5)
	MovementLoopAddLocation(NPC, 3.49, 12.04, -103.14, 1, 0)
	MovementLoopAddLocation(NPC, 2.48, 12.07, -99.93, 1, 0)
	MovementLoopAddLocation(NPC, -0.92, 12.02, -97.99, 1, 0)
	MovementLoopAddLocation(NPC, -9.01, 12.05, -96.58, 1, 0)
	MovementLoopAddLocation(NPC, -11.41, 12.12, -94.99, 1, 0)
	MovementLoopAddLocation(NPC, -14.96, 12.13, -91.2, 1, 0)
	MovementLoopAddLocation(NPC, -16.27, 12.03, -87.24, 1, 0)
	MovementLoopAddLocation(NPC, -15.64, 12.07, -74.81, 1, 0)
	MovementLoopAddLocation(NPC, -15.32, 12.04, -70.24, 1, 0)
	MovementLoopAddLocation(NPC, -15.04, 12.04, -63.17, 1, 0)
	MovementLoopAddLocation(NPC, -15.51, 12.08, -59.69, 1, 5)
	MovementLoopAddLocation(NPC, -15.51, 12.08, -59.69, 1, 0)
	MovementLoopAddLocation(NPC, -14.95, 12.03, -64.69, 1, 0)
	MovementLoopAddLocation(NPC, -16.95, 12.01, -80.95, 1, 0)
	MovementLoopAddLocation(NPC, -16.82, 12.01, -85.35, 1, 0)
	MovementLoopAddLocation(NPC, -16.3, 12.03, -88.74, 1, 0)
	MovementLoopAddLocation(NPC, -13.66, 12.16, -92.68, 1, 0)
	MovementLoopAddLocation(NPC, -11.82, 12.12, -94.57, 1, 0)
	MovementLoopAddLocation(NPC, -8.52, 12.08, -96.07, 1, 0)
	MovementLoopAddLocation(NPC, -1.62, 12.06, -97.4, 1, 0)
	MovementLoopAddLocation(NPC, 1.53, 12.03, -99.14, 1, 0)
	MovementLoopAddLocation(NPC, 2.98, 12.09, -101.99, 1, 0)
	MovementLoopAddLocation(NPC, 3.09, 12.07, -103.79, 1, 0)
	MovementLoopAddLocation(NPC, 3.29, 12.05, -107.54, 1, 5)
end

