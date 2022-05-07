--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon428943.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon428943.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:36 
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
	MovementLoopAddLocation(NPC, 175.6, 1.57, 182.76, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 176.15, 1.08, 166.04, 2, 0)
	MovementLoopAddLocation(NPC, 179.47, 0.92, 154.04, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 183.95, 0.12, 151.9, 2, 0)
	MovementLoopAddLocation(NPC, 192.91, -0.45, 146.1, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 169.41, 0.97, 148.05, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 163.65, 2.02, 162.69, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 175.91, 1.45, 185.34, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 163.63, 1.23, 173.81, 2, 0)
	MovementLoopAddLocation(NPC, 159.76, 0.95, 167.39, 2, 0)
	MovementLoopAddLocation(NPC, 159.98, 0.84, 164.11, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.16, 0.68, 168.58, 2, 0)
	MovementLoopAddLocation(NPC, 163.85, 0.31, 174.31, 2, 0)
	MovementLoopAddLocation(NPC, 172.95, 0.09, 182.42, 2, 0)
	MovementLoopAddLocation(NPC, 181.82, -0.38, 184.71, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 179.62, 1.12, 160.34, 2, math.random(10, 24))
end


