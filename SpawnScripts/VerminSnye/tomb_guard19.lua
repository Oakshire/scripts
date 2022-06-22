--[[
	Script Name		:	tomb_guard19.lua
	Script Purpose	:	Waypoint Path for tomb_guard19.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 09:01:10 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
     local Level = GetLevel(NPC)
    local level1 =15
    local level2 = 16
    local difficulty1 = 2
    local hp1 = 290
    local power1 = 100
    local difficulty2 = 2
    local hp2 = 345
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 253.93, -6.86, -134.78, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 250.55, -6.86, -135.15, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 247.65, -6.86, -142, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 235.16, -6.86, -144.01, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 234.59, -6.86, -148.39, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 234.98, -6.86, -157.5, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 249.74, -6.86, -156.85, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 250.2, -6.86, -169.21, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 232.89, -6.86, -157.35, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 232.83, -0.09, -173.09, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 232.95, -0.08, -173.19, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 232.62, -6.86, -159.19, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 234.31, -6.86, -152.84, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 234.43, -6.86, -145.4, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 241.97, -6.86, -144.95, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 242.56, -6.86, -132.01, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 243.16, -6.66, -123.14, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 243.15, -6.86, -118.77, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 246.9, -6.86, -103.46, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 247.21, -6.86, -82.39, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 251.22, -6.86, -82.31, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 251.13, -6.86, -96.71, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 251.22, -6.86, -82.31, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 247.21, -6.86, -82.39, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 246.9, -6.86, -103.46, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 243.15, -6.86, -118.77, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 243.16, -6.66, -123.14, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 242.56, -6.86, -132.01, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 241.97, -6.86, -144.95, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 234.43, -6.86, -145.4, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 234.31, -6.86, -152.84, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 232.62, -6.86, -159.19, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 232.95, -0.08, -173.19, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 232.83, -0.09, -173.09, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 232.89, -6.86, -157.35, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 250.2, -6.86, -169.21, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 249.74, -6.86, -156.85, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 234.98, -6.86, -157.5, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 234.59, -6.86, -148.39, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 235.16, -6.86, -144.01, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 247.65, -6.86, -142, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 250.55, -6.86, -135.15, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 253.93, -6.86, -134.78, 2, math.random(0,3))
end


