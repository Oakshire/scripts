--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432815.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432815.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:50 
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
	MovementLoopAddLocation(NPC, 167.77, 0.99, 185.04, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 162.14, 2.02, 167.77, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 152.48, 1.75, 175.67, 2, 0)
	MovementLoopAddLocation(NPC, 139.55, 1.21, 181.88, 2, 0)
	MovementLoopAddLocation(NPC, 132.39, 1.11, 187.01, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 142.84, 1.21, 191.01, 2, 0)
	MovementLoopAddLocation(NPC, 146.28, 1.29, 193.02, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 148.23, 1.98, 180.19, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 138.49, 1.12, 190.78, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 148.48, 2.21, 176.17, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 178.03, 1.91, 186.74, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 170.94, 2.03, 184.31, 2, 0)
	MovementLoopAddLocation(NPC, 144.21, 2.35, 188.8, 2, math.random(10, 24))
end


