--[[
    Script Name    : SpawnScripts/DownBelow_Classic/arabidshriller2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.15 02:01:59
    Script Purpose : 
                   : 
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
	MovementLoopAddLocation(NPC, -177.54, 1.5, -35.03, 2, 0)
	MovementLoopAddLocation(NPC, -185.51, 1.5, -42.79, 2, 0)
	MovementLoopAddLocation(NPC, -189.81, 1.5, -47.43, 2, 0)
	MovementLoopAddLocation(NPC, -190.98, 1.5, -53.8, 2, 0)
	MovementLoopAddLocation(NPC, -191.45, 1.5, -65.83, 2, 0)
	MovementLoopAddLocation(NPC, -188.65, 1.5, -71.17, 2, 0)
	MovementLoopAddLocation(NPC, -183.59, 1.5, -73.19, 2, 0)
	MovementLoopAddLocation(NPC, -167.28, 1.5, -73.98, 2, 0)
	MovementLoopAddLocation(NPC, -159.32, 1.5, -79.12, 2, 0)
	MovementLoopAddLocation(NPC, -155.37, 1.5, -81.21, 2, 0)
	MovementLoopAddLocation(NPC, -163.56, 1.5, -75.37, 2, 0)
	MovementLoopAddLocation(NPC, -175.14, 1.5, -74.3, 2, 0)
	MovementLoopAddLocation(NPC, -176.84, 1.5, -82.12, 2, 0)
	MovementLoopAddLocation(NPC, -179.54, 1.5, -86.74, 2, 0)
	MovementLoopAddLocation(NPC, -184.4, 1.5, -91.11, 2, 0)
	MovementLoopAddLocation(NPC, -189.91, 1.5, -93.11, 2, 0)
	MovementLoopAddLocation(NPC, -202.6, 1.5, -93.4, 2, 0)
	MovementLoopAddLocation(NPC, -209.44, 1.5, -92.03, 2, 0)
	MovementLoopAddLocation(NPC, -217.09, 1.5, -84.06, 2, 0)
	MovementLoopAddLocation(NPC, -218.66, 1.5, -76.88, 2, 0)
	MovementLoopAddLocation(NPC, -218.61, 1.5, -59.03, 2, 0)
	MovementLoopAddLocation(NPC, -213.82, 1.5, -52.93, 2, 0)
	MovementLoopAddLocation(NPC, -207.97, 1.5, -45.87, 2, 0)
	MovementLoopAddLocation(NPC, -204, 1.5, -42.48, 2, 0)
	MovementLoopAddLocation(NPC, -208.7, 1.5, -46.58, 2, 0)
	MovementLoopAddLocation(NPC, -213.02, 1.5, -51.18, 2, 0)
	MovementLoopAddLocation(NPC, -217.19, 1.5, -55.99, 2, 0)
	MovementLoopAddLocation(NPC, -218.48, 1.5, -58.99, 2, 0)
	MovementLoopAddLocation(NPC, -218.88, 1.5, -77.7, 2, 0)
	MovementLoopAddLocation(NPC, -217.54, 1.5, -83.31, 2, 0)
	MovementLoopAddLocation(NPC, -209.53, 1.5, -91.79, 2, 0)
	MovementLoopAddLocation(NPC, -204.65, 1.5, -92.83, 2, 0)
	MovementLoopAddLocation(NPC, -189.97, 1.5, -93.46, 2, 0)
	MovementLoopAddLocation(NPC, -180.33, 1.5, -88.38, 2, 0)
	MovementLoopAddLocation(NPC, -175.91, 1.5, -78.41, 2, 0)
	MovementLoopAddLocation(NPC, -175.88, 1.5, -74.79, 2, 0)
	MovementLoopAddLocation(NPC, -183.32, 1.5, -73.76, 2, 0)
	MovementLoopAddLocation(NPC, -188.62, 1.5, -70.81, 2, 0)
	MovementLoopAddLocation(NPC, -191.2, 1.5, -67.04, 2, 0)
	MovementLoopAddLocation(NPC, -191.24, 1.5, -55.25, 2, 0)
	MovementLoopAddLocation(NPC, -189.99, 1.5, -48.4, 2, 0)
	MovementLoopAddLocation(NPC, -177.54, 1.5, -35.03, 2, 0)
end
