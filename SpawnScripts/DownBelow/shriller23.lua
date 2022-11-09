--[[
	Script Name		:	shriller23.lua
	Script Purpose	:	Waypoint Path for shriller23.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 12:27:19 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 8
    local level2 = 9
    local difficulty1 = 8
    local hp1 = 485
    local power1 = 200
    local difficulty2 = 8
    local hp2 = 555
    local power2 = 240
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
	MovementLoopAddLocation(NPC, -204.05, 2, -91.29, 1, 0)
	MovementLoopAddLocation(NPC, -189.84, 2, -91.78, 1, 0)
	MovementLoopAddLocation(NPC, -181.21, 2, -89.3, 1, 0)
	MovementLoopAddLocation(NPC, -174.35, 2, -75.25, 1, 0)
	MovementLoopAddLocation(NPC, -179.58, 2, -83.47, 1, 0)
	MovementLoopAddLocation(NPC, -182.24, 2, -87.78, 1, 0)
	MovementLoopAddLocation(NPC, -188.66, 2, -92.05, 1, 0)
	MovementLoopAddLocation(NPC, -198.29, 2, -92.25, 1, 0)
	MovementLoopAddLocation(NPC, -195.56, 2, -103.45, 1, 0)
	MovementLoopAddLocation(NPC, -185.25, 2, -106.18, 1, 0)
	MovementLoopAddLocation(NPC, -181.83, 2, -111.96, 1, 0)
	MovementLoopAddLocation(NPC, -178.48, 2, -120.8, 1, 0)
	MovementLoopAddLocation(NPC, -182.53, 2, -108.38, 1, 0)
	MovementLoopAddLocation(NPC, -196.6, 2, -102.86, 1, 0)
	MovementLoopAddLocation(NPC, -198.62, 2, -96.14, 1, 0)
	MovementLoopAddLocation(NPC, -209.46, 2, -92.27, 1, 0)
	MovementLoopAddLocation(NPC, -213.04, 2, -88.39, 1, 0)
	MovementLoopAddLocation(NPC, -219.93, 2, -94.8, 1, 0)
	MovementLoopAddLocation(NPC, -221.37, 2, -92.63, 1, 0)
	MovementLoopAddLocation(NPC, -220.25, 2, -90.63, 1, 0)
	MovementLoopAddLocation(NPC, -216.68, 2, -93.43, 1, 0)
	MovementLoopAddLocation(NPC, -216.65, 2, -95.47, 1, 0)
	MovementLoopAddLocation(NPC, -218.16, 2, -97.02, 1, 0)
	MovementLoopAddLocation(NPC, -219.43, 2, -95.38, 1, 0)
	MovementLoopAddLocation(NPC, -218.3, 2, -91.78, 1, 0)
	MovementLoopAddLocation(NPC, -221.95, 2, -93.58, 1, 0)
	MovementLoopAddLocation(NPC, -217.46, 2, -93.5, 1, 0)
	MovementLoopAddLocation(NPC, -221.4, 2, -92, 1, 0)
	MovementLoopAddLocation(NPC, -217.79, 2, -91.88, 1, 0)
	MovementLoopAddLocation(NPC, -214.88, 2, -88.15, 1, 0)
	MovementLoopAddLocation(NPC, -217.8, 2, -77.9, 1, 0)
	MovementLoopAddLocation(NPC, -217.92, 2, -58.13, 1, 0)
	MovementLoopAddLocation(NPC, -214.64, 2, -52.8, 1, 0)
	MovementLoopAddLocation(NPC, -191.51, 2, -29.01, 1, 0)
	MovementLoopAddLocation(NPC, -180.44, 2, -40.16, 1, 0)
	MovementLoopAddLocation(NPC, -191.16, 2, -51.29, 1, 0)
	MovementLoopAddLocation(NPC, -191.47, 2, -61.3, 1, 0)
	MovementLoopAddLocation(NPC, -191.37, 2, -68.71, 1, 0)
	MovementLoopAddLocation(NPC, -184.23, 2, -74.23, 1, 0)
	MovementLoopAddLocation(NPC, -175.81, 2, -74.57, 1, 0)
	MovementLoopAddLocation(NPC, -184.23, 2, -74.23, 1, 0)
	MovementLoopAddLocation(NPC, -191.37, 2, -68.71, 1, 0)
	MovementLoopAddLocation(NPC, -191.47, 2, -61.3, 1, 0)
	MovementLoopAddLocation(NPC, -191.16, 2, -51.29, 1, 0)
	MovementLoopAddLocation(NPC, -180.44, 2, -40.16, 1, 0)
	MovementLoopAddLocation(NPC, -191.51, 2, -29.01, 1, 0)
	MovementLoopAddLocation(NPC, -214.64, 2, -52.8, 1, 0)
	MovementLoopAddLocation(NPC, -217.92, 2, -58.13, 1, 0)
	MovementLoopAddLocation(NPC, -217.8, 2, -77.9, 1, 0)
	MovementLoopAddLocation(NPC, -214.88, 2, -88.15, 1, 0)
	MovementLoopAddLocation(NPC, -217.79, 2, -91.88, 1, 0)
	MovementLoopAddLocation(NPC, -221.4, 2, -92, 1, 0)
	MovementLoopAddLocation(NPC, -217.46, 2, -93.5, 1, 0)
	MovementLoopAddLocation(NPC, -221.95, 2, -93.58, 1, 0)
	MovementLoopAddLocation(NPC, -218.3, 2, -91.78, 1, 0)
	MovementLoopAddLocation(NPC, -219.43, 2, -95.38, 1, 0)
	MovementLoopAddLocation(NPC, -218.16, 2, -97.02, 1, 0)
	MovementLoopAddLocation(NPC, -216.65, 2, -95.47, 1, 0)
	MovementLoopAddLocation(NPC, -216.68, 2, -93.43, 1, 0)
	MovementLoopAddLocation(NPC, -220.25, 2, -90.63, 1, 0)
	MovementLoopAddLocation(NPC, -221.37, 2, -92.63, 1, 0)
	MovementLoopAddLocation(NPC, -219.93, 2, -94.8, 1, 0)
	MovementLoopAddLocation(NPC, -213.04, 2, -88.39, 1, 0)
	MovementLoopAddLocation(NPC, -209.46, 2, -92.27, 1, 0)
	MovementLoopAddLocation(NPC, -198.62, 2, -96.14, 1, 0)
	MovementLoopAddLocation(NPC, -196.6, 2, -102.86, 1, 0)
	MovementLoopAddLocation(NPC, -182.53, 2, -108.38, 1, 0)
	MovementLoopAddLocation(NPC, -178.48, 2, -120.8, 1, 0)
	MovementLoopAddLocation(NPC, -181.83, 2, -111.96, 1, 0)
	MovementLoopAddLocation(NPC, -185.25, 2, -106.18, 1, 0)
	MovementLoopAddLocation(NPC, -195.56, 2, -103.45, 1, 0)
	MovementLoopAddLocation(NPC, -198.29, 2, -92.25, 1, 0)
	MovementLoopAddLocation(NPC, -188.66, 2, -92.05, 1, 0)
	MovementLoopAddLocation(NPC, -182.24, 2, -87.78, 1, 0)
	MovementLoopAddLocation(NPC, -179.58, 2, -83.47, 1, 0)
	MovementLoopAddLocation(NPC, -174.35, 2, -75.25, 1, 0)
	MovementLoopAddLocation(NPC, -181.21, 2, -89.3, 1, 0)
	MovementLoopAddLocation(NPC, -189.84, 2, -91.78, 1, 0)
	MovementLoopAddLocation(NPC, -204.05, 2, -91.29, 1, 0)
end


