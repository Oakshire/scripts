--[[
	Script Name		:	malefic_arachnid.lua
	Script Purpose	:	Waypoint Path for malefic_arachnid.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 12:26:09 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
          local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 7
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 150
    local difficulty2 = 6
    local hp2 = 215
    local power2 = 215
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
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -95.89, -0.07, -165.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.86, -0.08, -167.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.05, -0.08, -163.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.29, -0.08, -165.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.53, -0.07, -166.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -97.29, -0.08, -163.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.42, -0.08, -162.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.35, -0.08, -165.64, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.49, -0.07, -167.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.65, -0.08, -168.01, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.04, -0.08, -161.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.68, -0.08, -162.19, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.06, -0.08, -163.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.68, -0.08, -162.19, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.04, -0.08, -161.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.65, -0.08, -168.01, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.49, -0.07, -167.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.35, -0.08, -165.64, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.42, -0.08, -162.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -97.29, -0.08, -163.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.53, -0.07, -166.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.29, -0.08, -165.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.05, -0.08, -163.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.86, -0.08, -167.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.89, -0.07, -165.46, 2, math.random(0,10))
end


