--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedgrovedeer433044.lua
	Script Purpose	:	Waypoint Path for ataintedgrovedeer433044.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:20:01 
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
	MovementLoopAddLocation(NPC, 154.12, -3.2, 164.37, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 135.29, -3.7, 162.67, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 137.04, -3.75, 178.54, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 141.76, -3.53, 189.16, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 155.81, -2.8, 172.43, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 169.65, -3.01, 158.37, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 167.13, -3.11, 160.1, 2, 0)
	MovementLoopAddLocation(NPC, 149.16, -3.04, 166.65, 2, 0)
	MovementLoopAddLocation(NPC, 146.67, -3.42, 167.21, 2, 0)
	MovementLoopAddLocation(NPC, 138.94, -3.5, 170.25, 2, math.random(10, 24))
end


