--[[
	Script Name		:	forgotten_soul5.lua
	Script Purpose	:	Waypoint Path for forgotten_soul5.lua
	Script Author	:	Devn00b
	Script Date		:	05/15/2020 12:27:03 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 10
    local level2 = 9
    local difficulty1 = 6
    local hp1 = 370
    local power1 = 130
    local difficulty2 = 6
    local hp2 = 275
    local power2 = 110
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
	MovementLoopAddLocation(NPC, -184.94, -0.14, -41.12, 2, 0)
	MovementLoopAddLocation(NPC, -183.92, -0.03, -44.56, 2, 0)
	MovementLoopAddLocation(NPC, -175.37, -0.09, -36.45, 2, 0)
	MovementLoopAddLocation(NPC, -176.64, -0.11, -34.4, 2, 0)
	MovementLoopAddLocation(NPC, -178.3, -0.05, -32.74, 2, 0)
	MovementLoopAddLocation(NPC, -178.18, -0.06, -39.48, 2, 0)
	MovementLoopAddLocation(NPC, -184.38, -0.08, -35.59, 2, 0)
	MovementLoopAddLocation(NPC, -190.67, 0, -29.95, 2, 0)
	MovementLoopAddLocation(NPC, -200.23, 0, -20.67, 2, 0)
	MovementLoopAddLocation(NPC, -190.93, 0, -21.27, 2, 0)
	MovementLoopAddLocation(NPC, -203.9, 0, -30.5, 2, 0)
	MovementLoopAddLocation(NPC, -199.02, 0, -36.9, 2, 0)
	MovementLoopAddLocation(NPC, -213.49, -0.04, -51.41, 2, 0)
	MovementLoopAddLocation(NPC, -218.17, 0.03, -56.74, 2, 0)
	MovementLoopAddLocation(NPC, -218.8, 0, -67.85, 2, 0)
	MovementLoopAddLocation(NPC, -217.94, 0.02, -57.29, 2, 0)
	MovementLoopAddLocation(NPC, -190.91, 0, -29.46, 2, 0)
	MovementLoopAddLocation(NPC, -181.61, -0.15, -38.26, 2, 0)
	MovementLoopAddLocation(NPC, -189.97, 0.47, -47.93, 2, 0)
	MovementLoopAddLocation(NPC, -191.11, -0.12, -61.17, 2, 0)
	MovementLoopAddLocation(NPC, -189.97, 0.47, -47.93, 2, 0)
	MovementLoopAddLocation(NPC, -181.61, -0.15, -38.26, 2, 0)
	MovementLoopAddLocation(NPC, -190.91, 0, -29.46, 2, 0)
	MovementLoopAddLocation(NPC, -217.94, 0.02, -57.29, 2, 0)
	MovementLoopAddLocation(NPC, -218.8, 0, -67.85, 2, 0)
	MovementLoopAddLocation(NPC, -218.17, 0.03, -56.74, 2, 0)
	MovementLoopAddLocation(NPC, -213.49, -0.04, -51.41, 2, 0)
	MovementLoopAddLocation(NPC, -199.02, 0, -36.9, 2, 0)
	MovementLoopAddLocation(NPC, -203.9, 0, -30.5, 2, 0)
	MovementLoopAddLocation(NPC, -190.93, 0, -21.27, 2, 0)
	MovementLoopAddLocation(NPC, -200.23, 0, -20.67, 2, 0)
	MovementLoopAddLocation(NPC, -190.67, 0, -29.95, 2, 0)
	MovementLoopAddLocation(NPC, -184.38, -0.08, -35.59, 2, 0)
	MovementLoopAddLocation(NPC, -178.18, -0.06, -39.48, 2, 0)
	MovementLoopAddLocation(NPC, -178.3, -0.05, -32.74, 2, 0)
	MovementLoopAddLocation(NPC, -176.64, -0.11, -34.4, 2, 0)
	MovementLoopAddLocation(NPC, -175.37, -0.09, -36.45, 2, 0)
	MovementLoopAddLocation(NPC, -183.92, -0.03, -44.56, 2, 0)
	MovementLoopAddLocation(NPC, -184.94, -0.14, -41.12, 2, 0)
end


