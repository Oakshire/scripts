--[[
	Script Name		:	ravenous_cube3.lua
	Script Purpose	:	Waypoint Path for ravenous_cube3.lua
	Script Author	:	Devn00b
	Script Date		:	06/28/2020 06:21:02 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =14
    local level2 = 15
    local difficulty1 = 6
    local hp1 = 795
    local power1 = 240
    local difficulty2 = 6
    local hp2 = 920
    local power2 = 270
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
	MovementLoopAddLocation(NPC, 97.99, 0.05, -63.35, 2, 0)
	MovementLoopAddLocation(NPC, 123.37, -2.44, -62.6, 2, 0)
	MovementLoopAddLocation(NPC, 129.61, -3.86, -58.58, 2, 0)
	MovementLoopAddLocation(NPC, 143.65, -6.83, -44.81, 2, 0)
	MovementLoopAddLocation(NPC, 148.96, -6.83, -42.84, 2, 0)
	MovementLoopAddLocation(NPC, 172.21, -7.01, -60.48, 2, 0)
	MovementLoopAddLocation(NPC, 170.69, -7.01, -38.49, 2, 0)
	MovementLoopAddLocation(NPC, 156.37, -7.01, -40.25, 2, 0)
	MovementLoopAddLocation(NPC, 163.22, -7.52, -42.94, 2, 0)
	MovementLoopAddLocation(NPC, 159.09, -7.01, -59.36, 2, 0)
	MovementLoopAddLocation(NPC, 150.67, -7.01, -58.15, 2, 0)
	MovementLoopAddLocation(NPC, 168.5, -7.01, -50.58, 2, 0)
	MovementLoopAddLocation(NPC, 172.03, -7.01, -44.04, 2, 0)
	MovementLoopAddLocation(NPC, 177.73, -7.03, -44.29, 2, 0)
	MovementLoopAddLocation(NPC, 182.82, -6.47, -49.03, 2, 0)
	MovementLoopAddLocation(NPC, 176.45, -6.92, -44.75, 2, 0)
	MovementLoopAddLocation(NPC, 169.83, -7.01, -45.01, 2, 0)
	MovementLoopAddLocation(NPC, 167.88, -7.01, -39.24, 2, 0)
	MovementLoopAddLocation(NPC, 173.1, -7.01, -39.01, 2, 0)
	MovementLoopAddLocation(NPC, 157.06, -7.01, -39.48, 2, 0)
	MovementLoopAddLocation(NPC, 173.1, -7.01, -39.01, 2, 0)
	MovementLoopAddLocation(NPC, 167.88, -7.01, -39.24, 2, 0)
	MovementLoopAddLocation(NPC, 169.83, -7.01, -45.01, 2, 0)
	MovementLoopAddLocation(NPC, 176.45, -6.92, -44.75, 2, 0)
	MovementLoopAddLocation(NPC, 182.82, -6.47, -49.03, 2, 0)
	MovementLoopAddLocation(NPC, 177.73, -7.03, -44.29, 2, 0)
	MovementLoopAddLocation(NPC, 172.03, -7.01, -44.04, 2, 0)
	MovementLoopAddLocation(NPC, 168.5, -7.01, -50.58, 2, 0)
	MovementLoopAddLocation(NPC, 150.67, -7.01, -58.15, 2, 0)
	MovementLoopAddLocation(NPC, 159.09, -7.01, -59.36, 2, 0)
	MovementLoopAddLocation(NPC, 163.22, -7.52, -42.94, 2, 0)
	MovementLoopAddLocation(NPC, 156.37, -7.01, -40.25, 2, 0)
	MovementLoopAddLocation(NPC, 170.69, -7.01, -38.49, 2, 0)
	MovementLoopAddLocation(NPC, 172.21, -7.01, -60.48, 2, 0)
	MovementLoopAddLocation(NPC, 148.96, -6.83, -42.84, 2, 0)
	MovementLoopAddLocation(NPC, 143.65, -6.83, -44.81, 2, 0)
	MovementLoopAddLocation(NPC, 129.61, -3.86, -58.58, 2, 0)
	MovementLoopAddLocation(NPC, 123.37, -2.44, -62.6, 2, 0)
	MovementLoopAddLocation(NPC, 97.99, 0.05, -63.35, 2, 0)
end


