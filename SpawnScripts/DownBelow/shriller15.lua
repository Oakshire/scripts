--[[
	Script Name		:	shriller15.lua
	Script Purpose	:	Waypoint Path for shriller15.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 02:42:44 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 4
    local level2 = 5
    local difficulty1 = 6
    local hp1 = 110
    local power1 = 55
    local difficulty2 = 6
    local hp2 = 130
    local power2 = 65
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
	MovementLoopAddLocation(NPC, -173.52, 2, -179.95, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -172.95, 2, -188.2, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.99, 2, -180.1, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.32, 2, -175.24, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -165.74, 2, -172.96, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -153.73, 2, -172.89, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -150.74, 2, -164.69, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.19, 2, -165.38, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -149.36, 2, -168.75, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -154.24, 2, -167.38, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -154.15, 2, -164.87, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -149.22, 2, -167.16, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -151.37, 2, -168.76, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -152.67, 2, -162.78, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -153.08, 2, -166.57, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -150.21, 2, -167.81, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.28, 2, -164.57, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -155.33, 2, -172.81, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -143.08, 2, -179.34, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -132.3, 2, -182.38, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.36, 2, -180.69, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -119.69, 2, -174.2, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -119.75, 2, -166.76, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -107.62, 2, -168.14, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -104.19, 2, -173.76, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -119.25, 2, -166.01, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -120.46, 2, -151.48, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -128.65, 2, -143.89, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -128.92, 2, -136.94, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -126.35, 2, -123.25, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -128.92, 2, -136.94, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -128.65, 2, -143.89, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -120.46, 2, -151.48, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -119.25, 2, -166.01, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -104.19, 27, -173.76, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -107.62, 2, -168.14, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -119.75, 2, -166.76, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -119.69, 2, -174.2, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.36, 2, -180.69, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -132.3, 2, -182.38, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -143.08, 2, -179.34, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -155.33, 2, -172.81, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.28, 2, -164.57, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -150.21, 2, -167.81, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -153.08, 2, -166.57, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -152.67, 2, -162.78, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -151.37, 2, -168.76, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -149.22, 2, -167.16, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -154.15, 2, -164.87, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -154.24, 2, -167.38, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -149.36, 2, -168.75, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.19, 2, -165.38, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -150.74, 2, -164.69, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -153.73, 2, -172.89, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -165.74, 2, -172.96, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.32, 2, -175.24, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.99, 2, -180.1, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -172.95, 2, -188.2, 1, math.random(0,10))
    MovementLoopAddLocation(NPC, -173.52, 2, -179.95, 1, math.random(0,10))


end