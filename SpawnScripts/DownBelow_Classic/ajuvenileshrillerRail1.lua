--[[
    Script Name    : SpawnScripts/DownBelow_Classic/ajuvenileshrillerRail1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.09 09:11:05
    Script Purpose : 
                   : 
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

    --AddTimer(NPC,(MakeRandomInt(0,8000)),"ChooseMovement")
    ChooseMovement(NPC)
end

function ChooseMovement(NPC)
	local route = math.random(1,3)
	if route == 1 then
	    RouteOne(NPC, Spawn)
	elseif route == 2 then
	    RouteTwo(NPC, Spawn)
	elseif route == 3 then
	    RouteThree(NPC, Spawn)
	end
end

function RouteOne(NPC, Spawn)
    MovementLoopAddLocation(NPC, -12.93, 2, -89.93, 2, 0)
	MovementLoopAddLocation(NPC, -12.93, 2, -89.93, 2, 0)
	MovementLoopAddLocation(NPC, -29.21, 2, -73.44, 2, 0)
	MovementLoopAddLocation(NPC, -45.97, 2, -66.81, 2, 0)
	MovementLoopAddLocation(NPC, -52.56, 2, -70.13, 2, 0)
	MovementLoopAddLocation(NPC, -58, 2, -85.24, 2, 0)
	MovementLoopAddLocation(NPC, -57.83, 2, -93.24, 2, 0)
	MovementLoopAddLocation(NPC, -60.76, 2, -95.75, 2, 0)
	MovementLoopAddLocation(NPC, -62.95, 2, -96.43, 2, 0)
	MovementLoopAddLocation(NPC, -57.82, 2, -93.62, 2, 0)
	MovementLoopAddLocation(NPC, -58.25, 2, -85.9, 2, 0)
	MovementLoopAddLocation(NPC, -52.51, 2, -70.12, 2, 0)
	MovementLoopAddLocation(NPC, -49.61, 2, -67.4, 2, 0)
	MovementLoopAddLocation(NPC, -46.75, 2, -66.58, 2, 0)
	MovementLoopAddLocation(NPC, -43.9, 2, -67.46, 2, 0)
	MovementLoopAddLocation(NPC, -32.17, 2, -72.02, 2, 0)
	MovementLoopAddLocation(NPC, -12.93, 2, -89.93, 2, 0, "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    MovementLoopAddLocation(NPC, -12.93, 2, -89.93, 2, 0)
	MovementLoopAddLocation(NPC, -33.13, 2, -109.44, 2, 0)
	MovementLoopAddLocation(NPC, -34.35, 2, -129.23, 2, 0)
	MovementLoopAddLocation(NPC, -37.46, 2, -133.34, 2, 0)
	MovementLoopAddLocation(NPC, -54.69, 2, -150.55, 2, 0)
	MovementLoopAddLocation(NPC, -63.81, 2, -152.77, 2, 0)
	MovementLoopAddLocation(NPC, -81, 2, -152.43, 2, 0)
	MovementLoopAddLocation(NPC, -88.37, 2, -157.28, 2, 0)
	MovementLoopAddLocation(NPC, -88.99, 2, -175.1, 2, 0)
	MovementLoopAddLocation(NPC, -83.61, 2, -183.01, 2, 0)
	MovementLoopAddLocation(NPC, -83.9, 2, -190.1, 2, 0)
	MovementLoopAddLocation(NPC, -89.36, 2, -193.91, 2, 0)
	MovementLoopAddLocation(NPC, -93.06, 2, -194.46, 2, 0)
	MovementLoopAddLocation(NPC, -85.95, 2, -192.12, 2, 0)
	MovementLoopAddLocation(NPC, -83.5, 2, -187.63, 2, 0)
	MovementLoopAddLocation(NPC, -85.62, 2, -180.8, 2, 0)
	MovementLoopAddLocation(NPC, -89.13, 2, -175.07, 2, 0)
	MovementLoopAddLocation(NPC, -88.16, 2, -155.92, 2, 0)
	MovementLoopAddLocation(NPC, -82.2, 2, -153.12, 2, 0)
	MovementLoopAddLocation(NPC, -58.56, 2, -152.77, 2, 0)
	MovementLoopAddLocation(NPC, -34.47, 2, -130.82, 2, 0)
	MovementLoopAddLocation(NPC, -34.47, 2, -130.82, 2, 0)
	MovementLoopAddLocation(NPC, -34.08, 2, -110.26, 2, 0)
	MovementLoopAddLocation(NPC, -12.93, 2, -89.93, 2, 0, "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    MovementLoopAddLocation(NPC, -12.93, 2, -89.93, 2, 0)
	MovementLoopAddLocation(NPC, 2.15, 2, -106.23, 2, 0)
	MovementLoopAddLocation(NPC, 5.87, 2, -108.25, 2, 0)
	MovementLoopAddLocation(NPC, 12.28, 2, -103.52, 2, 0)
	MovementLoopAddLocation(NPC, 21.4, 2, -94.55, 2, 0)
	MovementLoopAddLocation(NPC, 21.42, 2, -67.62, 2, 0)
	MovementLoopAddLocation(NPC, 14.27, 2, -60.73, 2, 0)
	MovementLoopAddLocation(NPC, -2.81, 2, -59.95, 2, 0)
	MovementLoopAddLocation(NPC, -14.76, 2, -48.36, 2, 0)
	MovementLoopAddLocation(NPC, -14.94, 2, -41.49, 2, 0)
	MovementLoopAddLocation(NPC, -1.56, 2, -27.95, 2, 0)
	MovementLoopAddLocation(NPC, -0.23, 2, -21.61, 2, 0)
	MovementLoopAddLocation(NPC, -0.17, 2, -18.38, 2, 0)
	MovementLoopAddLocation(NPC, 0.14, 2, -23.37, 2, 0)
	MovementLoopAddLocation(NPC, -3.09, 2, -30.03, 2, 0)
	MovementLoopAddLocation(NPC, -14.32, 2, -40.65, 2, 0)
	MovementLoopAddLocation(NPC, -15.24, 2, -48.01, 2, 0)
	MovementLoopAddLocation(NPC, -5.73, 2, -57.48, 2, 0)
	MovementLoopAddLocation(NPC, -1.9, 2, -60.12, 2, 0)
	MovementLoopAddLocation(NPC, 14.39, 2, -61.1, 2, 0)
	MovementLoopAddLocation(NPC, 18.11, 2, -63.59, 2, 0)
	MovementLoopAddLocation(NPC, 21.41, -2, -70.98, 2, 0)
	MovementLoopAddLocation(NPC, 20.96, 2, -95.74, 2, 0)
	MovementLoopAddLocation(NPC, 6.87, 2, -108.98, 2, 0)
	MovementLoopAddLocation(NPC, 2.94, 2, -106.79, 2, 0)
	MovementLoopAddLocation(NPC, -12.93, 2, -89.93, 2, 0, "ChooseMovement")
end



function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end