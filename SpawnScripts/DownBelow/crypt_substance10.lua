--[[
	Script Name		:	crypt_substance10.lua
	Script Purpose	:	Waypoint Path for crypt_substance10.lua
	Script Author	:	Devn00b
	Script Date		:	05/11/2020 11:44:23 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 5
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 150
    local difficulty2 = 6
    local hp2 = 130
    local power2 = 130
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
	MovementLoopAddLocation(NPC, -40.42, -0.56, -139.6, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.11, -0.17, -133.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -35.93, -0.05, -134.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.55, 0.54, -127.3, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.22, 0.03, -132.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -53.38, 0.2, -147.2, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -61.71, -0.09, -151.21, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -73.55, -0.05, -153.1, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.89, -0.06, -151.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -72.91, -0.05, -155.4, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -66.57, 0.33, -150.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -65.5, -0.08, -154.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.85, 0, -152.64, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.21, -0.09, -156.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.21, -0.09, -156.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.37, -0.08, -168.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -91.09, -0.06, -169.4, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -91.95, -0.08, -161.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.39, -0.05, -152.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.24, -0.07, -153.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -72.23, -0.1, -139.52, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.3, -0.06, -136.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -110.05, -0.08, -113.67, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -115.34, -0.07, -116.79, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -110.05, -0.08, -113.67, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.3, -0.06, -136.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -72.23, -0.1, -139.52, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.24, -0.07, -153.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.39, -0.05, -152.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -91.95, -0.08, -161.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -91.09, -0.06, -169.4, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.37, -0.08, -168.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.21, -0.09, -156.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.21, -0.09, -156.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.85, 0, -152.64, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -65.5, -0.08, -154.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -66.57, 0.33, -150.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -72.91, -0.05, -155.4, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.89, -0.06, -151.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -73.55, -0.05, -153.1, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -61.71, -0.09, -151.21, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -53.38, 0.2, -147.2, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.22, 0.03, -132.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.55, 0.54, -127.3, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -35.93, -0.05, -134.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.11, -0.17, -133.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.42, -0.56, -139.6, 2, math.random(0,10))
end


