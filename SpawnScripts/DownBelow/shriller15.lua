--[[
	Script Name		:	shriller15.lua
	Script Purpose	:	Waypoint Path for shriller15.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 02:42:44 PM
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
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -173.52, 0.11, -179.95, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -172.95, -0.08, -188.2, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.99, 0.08, -180.1, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.32, -0.08, -175.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -165.74, 0.38, -172.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -153.73, -0.31, -172.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -150.74, -0.24, -164.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.19, 0.21, -165.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -149.36, -0.23, -168.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -154.24, -0.19, -167.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -154.15, -0.2, -164.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -149.22, -0.23, -167.16, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -151.37, -0.23, -168.76, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -152.67, 1, -162.78, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -153.08, -0.19, -166.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -150.21, -0.22, -167.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.28, 1, -164.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -155.33, -0.34, -172.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -143.08, -0.34, -179.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -132.3, 0.48, -182.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.36, 0.54, -180.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -119.69, 0.09, -174.2, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -119.75, -0.1, -166.76, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -107.62, -0.03, -168.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -104.19, -0.07, -173.76, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -119.25, -0.12, -166.01, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -120.46, 0.45, -151.48, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -128.65, -0.1, -143.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -128.92, -0.08, -136.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -126.35, -0.1, -123.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -128.92, -0.08, -136.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -128.65, -0.1, -143.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -120.46, 0.45, -151.48, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -119.25, -0.12, -166.01, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -104.19, -0.07, -173.76, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -107.62, -0.03, -168.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -119.75, -0.1, -166.76, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -119.69, 0.09, -174.2, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.36, 0.54, -180.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -132.3, 0.48, -182.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -143.08, -0.34, -179.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -155.33, -0.34, -172.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.28, 1, -164.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -150.21, -0.22, -167.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -153.08, -0.19, -166.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -152.67, 1, -162.78, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -151.37, -0.23, -168.76, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -149.22, -0.23, -167.16, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -154.15, -0.2, -164.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -154.24, -0.19, -167.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -149.36, -0.23, -168.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.19, 0.21, -165.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -150.74, -0.24, -164.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -153.73, -0.31, -172.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -165.74, 0.38, -172.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.32, -0.08, -175.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.99, 0.08, -180.1, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -172.95, -0.08, -188.2, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.52, 0.11, -179.95, 2, math.random(0,10))
end


