--[[
    Script Name    : SpawnScripts/DownBelow/venom_spitter3033.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.05 01:04:33
    Script Purpose : 
                   : 
--]]

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

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -116.34, 0, -203.88, 2, 0)
	MovementLoopAddLocation(NPC, -119.08, 0, -203.64, 2, 0)
	MovementLoopAddLocation(NPC, -120.51, 0, -202.19, 2, 0)
	MovementLoopAddLocation(NPC, -121.19, 0, -192.04, 2, 5)
	MovementLoopAddLocation(NPC, -121.12, 0, -201.99, 2, 0)
	MovementLoopAddLocation(NPC, -118.41, 0, -203.75, 2, 0)
	MovementLoopAddLocation(NPC, -102.97, 0, -207.99, 2, 5)
	MovementLoopAddLocation(NPC, -116.23, 0, -204.03, 2, 0)
	MovementLoopAddLocation(NPC, -118.84, 0, -204.19, 2, 0)
	MovementLoopAddLocation(NPC, -126.05, 0, -200.18, 2, 5)
	MovementLoopAddLocation(NPC, -124.79, 0, -203.62, 2, 0)
	MovementLoopAddLocation(NPC, -116.67, 0, -204.12, 2, 0)
	MovementLoopAddLocation(NPC, -104.82, 0, -200.51, 2, 0)
	MovementLoopAddLocation(NPC, -98.78, 0, -201.76, 2, 5)
	MovementLoopAddLocation(NPC, -101.54, 0, -199.9, 2, 0)
	MovementLoopAddLocation(NPC, -112.04, 0, -203.77, 2, 0)
	MovementLoopAddLocation(NPC, -119.65, 0, -203.91, 2, 0)
	MovementLoopAddLocation(NPC, -121.17, 0, -194.57, 2, 0)
	MovementLoopAddLocation(NPC, -119.12, 0, -192.06, 2, 0)
	MovementLoopAddLocation(NPC, -107.52, 0, -191.85, 2, 5)
	MovementLoopAddLocation(NPC, -119.15, 0, -191.7, 2, 0)
	MovementLoopAddLocation(NPC, -120.31, 0, -192.97, 2, 0)
	MovementLoopAddLocation(NPC, -121.14, 0, -200.78, 2, 0)
	MovementLoopAddLocation(NPC, -120.38, 0, -203.07, 2, 0)
	MovementLoopAddLocation(NPC, -106.77, 0, -208.34, 2, 5)
	MovementLoopAddLocation(NPC, -111.93, 0, -203.96, 2, 0)
	MovementLoopAddLocation(NPC, -119.25, 0, -203.81, 2, 0)
	MovementLoopAddLocation(NPC, -120.8, 0, -202.07, 2, 0)
	MovementLoopAddLocation(NPC, -121.2, 0, -193.64, 2, 5)
	MovementLoopAddLocation(NPC, -121.51, 0, -201.42, 2, 0)
	MovementLoopAddLocation(NPC, -119.99, 0, -203.26, 2, 0)
	MovementLoopAddLocation(NPC, -103.2, 0, -200.16, 2, 0)
	MovementLoopAddLocation(NPC, -99.87, 0, -199.74, 2, 0)
	MovementLoopAddLocation(NPC, -98.51, 0, -194.27, 2, 5)
	MovementLoopAddLocation(NPC, -98.52, 0, -197.94, 2, 0)
	MovementLoopAddLocation(NPC, -101.39, 0, -199.55, 2, 0)
	MovementLoopAddLocation(NPC, -116.72, 0, -203.79, 2, 0)
end
