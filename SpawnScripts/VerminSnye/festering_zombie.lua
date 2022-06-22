--[[
	Script Name		:	festing_zombie.lua
	Script Purpose	:	Waypoint Path for festing_zombie.lua
	Script Author	:	Devn00b
	Script Date		:	06/12/2020 12:02:41 AM
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
	MovementLoopAddLocation(NPC, -10.69, 0.21, -113.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.73, -0.17, -113.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -8.88, -0.1, -115.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -11.77, 0.26, -115.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -15.94, 0.51, -119.21, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -13.2, -0.21, -115.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -12.77, -0.09, -111.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -14.57, -0.14, -113.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -12.55, -0.03, -113.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -11.21, 0.21, -112.76, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -11.81, 0.08, -115.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -9.96, 0.21, -114.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -11.81, 0.08, -115.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -11.21, 0.21, -112.76, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -12.55, -0.03, -113.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -14.57, -0.14, -113.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -12.77, -0.09, -111.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -13.2, -0.21, -115.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -15.94, 0.51, -119.21, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -11.77, 0.26, -115.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -8.88, -0.1, -115.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -13.73, -0.17, -113.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -10.69, 0.21, -113.27, 2, math.random(0,5))
end


