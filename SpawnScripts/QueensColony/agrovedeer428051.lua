--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428051.lua
	Script Purpose	:	Waypoint Path for agrovedeer428051.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:19:31 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 1
    local level2 = 2
    local difficulty1 = 6
    local hp1 = 30
    local power1 = 25
    local difficulty2 = 6
    local hp2 = 45
    local power2 = 35
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 186.46, -3.15, 157.94, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 156.27, -2.92, 148.06, 2, 0)
	MovementLoopAddLocation(NPC, 141.5, -3.99, 141.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 147.95, -3.31, 162.27, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 170.12, -3.31, 147.73, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 149.73, -3.1, 164.46, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 163.59, -3.2, 170.19, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 166.7, -3.53, 139.71, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.24, -3.56, 155.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.18, -3.96, 131.38, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 147.72, -3.43, 144.31, 2, 0)
	MovementLoopAddLocation(NPC, 146.16, -3.5, 170.27, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 174.55, -3.29, 185.24, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 173.13, -3.2, 162.19, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 176.27, -3.2, 161.4, 2, 0)
	MovementLoopAddLocation(NPC, 180.23, -3.2, 159.39, 2, 0)
end


