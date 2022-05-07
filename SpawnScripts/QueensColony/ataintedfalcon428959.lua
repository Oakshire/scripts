--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon428959.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon428959.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:19:11 
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

function hailed(NPC)
	FaceTarget(NPC)
end

function respawn(NPC)
        spawn(NPC)
end
function hailed(NPC)
    FaceTarget(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 136.43, -0.68, 170.51, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 168.2, 1.01, 153.94, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 167.8, 0.78, 149.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 152.92, 0.78, 147.44, 2, 0)
	MovementLoopAddLocation(NPC, 144.33, 0.78, 141.6, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 152.17, 0.75, 144.02, 2, 0)
	MovementLoopAddLocation(NPC, 166.1, 0.97, 146, 2, 0)
	MovementLoopAddLocation(NPC, 179.84, 1.14, 150.17, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 157.77, -0.37, 137.58, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 152.03, 0.98, 144.11, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.51, -0.75, 152.51, 2, 0)
	MovementLoopAddLocation(NPC, 172.01, -0.42, 160.42, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 157.93, -1.17, 180.7, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 156.08, -0.81, 172.11, 2, 0)
	MovementLoopAddLocation(NPC, 154.08, -0.42, 166.36, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 145.64, -0.5, 167.33, 2, 0)
end


