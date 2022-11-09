--[[
	Script Name		:	malefic_arachnid2.lua
	Script Purpose	:	Waypoint Path for malefic_arachnid2.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 12:29:13 PM
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
 spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -96.16, -0.08, -162.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.21, -0.08, -162.07, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.2, -0.08, -163.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.04, -0.07, -168.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -97.08, -0.07, -167.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.81, -0.08, -168.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.74, -0.08, -163.72, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.62, -0.08, -166.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.5, -0.08, -162.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.97, -0.08, -162.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.22, -0.08, -163.4, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.89, -0.08, -165.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.99, -0.07, -166.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.14, -0.08, -164.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.08, -0.08, -166.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.97, -0.08, -167.59, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.86, -0.08, -168.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.82, -0.07, -167.49, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.68, -0.08, -162.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.82, -0.07, -167.49, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.86, -0.08, -168.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.97, -0.08, -167.59, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.08, -0.08, -166.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.14, -0.08, -164.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.99, -0.07, -166.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.89, -0.08, -165.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.22, -0.08, -163.4, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.97, -0.08, -162.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.5, -0.08, -162.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.62, -0.08, -166.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.74, -0.08, -163.72, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.81, -0.08, -168.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -97.08, -0.07, -167.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.04, -0.07, -168.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.2, -0.08, -163.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.21, -0.08, -162.07, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.16, -0.08, -162.74, 2, math.random(0,10))
end


