--[[
	Script Name		:	shriller18.lua
	Script Purpose	:	Waypoint Path for shriller18.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 03:55:41 PM
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
	MovementLoopAddLocation(NPC, -148.04, 2, -143.71, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -143.03, 2, -147.34, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -142.64, 2, -142.69, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.3, 2, -147.61, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -145.55, 2, -146.09, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -145.33, 2, -142.38, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -147.93, 2, -142.44, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -145.92, 2, -142.55, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -146.08, 2, -138.03, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -158.37, 2, -136.01, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -158.22, 2, -110.89, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -152.97, 2, -96.55, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -147.96, 2, -84.22, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.04, 2, -72.18, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.58, 2, -72.79, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -191.5, 2, -66.63, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -191.79, 2, -59.81, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -190.15, 2, -48.03, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -178.98, 2, -33.97, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.7, 2, -36, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.03, 2, -44.58, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.81, 2, -43.27, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -192.33, 2, -53.85, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -190.83, 2, -58.92, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -196.72, 2, -61.5, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -201.38, 2, -63.51, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -197.32, 2, -58.08, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -202.09, 2, -57.88, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -197.32, 2, -58.08, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -201.38, 2, -63.51, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -196.72, 2, -61.5, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -190.83, 2, -58.92, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -192.33, 2, -53.85, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.81, 2, -43.27, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.03, 2, -44.58, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.7, 2, -36, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -178.98, 2, -33.97, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -190.15, 2, -48.03, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -191.79, 2, -59.81, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -191.5, 2, -66.63, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.58, 2, -72.79, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.04, 2, -72.18, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -147.96, 2, -84.22, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -152.97, 2, -96.55, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -158.22, 2, -110.89, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -158.37, 2, -136.01, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -146.08, 2, -138.03, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -145.92,2, -142.55, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -147.93, 2, -142.44, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -145.33, 2, -142.38, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -145.55, 2, -146.09, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.3, 2, -147.61, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -142.64, 2, -142.69, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -143.03, 2, -147.34, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.04, 2, -143.71, 1, math.random(0,10))
end


