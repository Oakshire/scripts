--[[
    Script Name    : SpawnScripts/DownBelow_Classic/adustcrawlerhatchlingRail1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.10 08:11:23
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
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

    --AddTimer(NPC,(MakeRandomInt(0,4000)),"ChooseMovement")
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
    MovementLoopAddLocation(NPC, -12.93, -0.1, -89.93, 2, 0)
	MovementLoopAddLocation(NPC, -12.93, -0.1, -89.93, 2, 0)
	MovementLoopAddLocation(NPC, -29.21, -0.12, -73.44, 2, 0)
	MovementLoopAddLocation(NPC, -45.97, -0.15, -66.81, 2, 0)
	MovementLoopAddLocation(NPC, -52.56, -0.08, -70.13, 2, 0)
	MovementLoopAddLocation(NPC, -58, -0.08, -85.24, 2, 0)
	MovementLoopAddLocation(NPC, -57.83, -0.07, -93.24, 2, 0)
	MovementLoopAddLocation(NPC, -60.76, -0.07, -95.75, 2, 0)
	MovementLoopAddLocation(NPC, -62.95, -0.05, -96.43, 2, 0)
	MovementLoopAddLocation(NPC, -57.82, -0.07, -93.62, 2, 0)
	MovementLoopAddLocation(NPC, -58.25, -0.08, -85.9, 2, 0)
	MovementLoopAddLocation(NPC, -52.51, -0.08, -70.12, 2, 0)
	MovementLoopAddLocation(NPC, -49.61, -0.12, -67.4, 2, 0)
	MovementLoopAddLocation(NPC, -46.75, -0.16, -66.58, 2, 0)
	MovementLoopAddLocation(NPC, -43.9, -0.11, -67.46, 2, 0)
	MovementLoopAddLocation(NPC, -32.17, -0.14, -72.02, 2, 0)
	MovementLoopAddLocation(NPC, -12.93, -0.1, -89.93, 2, 0, "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    MovementLoopAddLocation(NPC, -12.93, -0.1, -89.93, 2, 0)
	MovementLoopAddLocation(NPC, -33.13, -0.01, -109.44, 2, 0)
	MovementLoopAddLocation(NPC, -34.35, -0.09, -129.23, 2, 0)
	MovementLoopAddLocation(NPC, -37.46, 0.03, -133.34, 2, 0)
	MovementLoopAddLocation(NPC, -54.69, 0.02, -150.55, 2, 0)
	MovementLoopAddLocation(NPC, -63.81, 0.09, -152.77, 2, 0)
	MovementLoopAddLocation(NPC, -81, -0.08, -152.43, 2, 0)
	MovementLoopAddLocation(NPC, -88.37, -0.09, -157.28, 2, 0)
	MovementLoopAddLocation(NPC, -88.99, -0.06, -175.1, 2, 0)
	MovementLoopAddLocation(NPC, -83.61, -0.07, -183.01, 2, 0)
	MovementLoopAddLocation(NPC, -83.9, -0.06, -190.1, 2, 0)
	MovementLoopAddLocation(NPC, -89.36, 0.43, -193.91, 2, 0)
	MovementLoopAddLocation(NPC, -93.06, 0.03, -194.46, 2, 0)
	MovementLoopAddLocation(NPC, -85.95, -0.1, -192.12, 2, 0)
	MovementLoopAddLocation(NPC, -83.5, -0.08, -187.63, 2, 0)
	MovementLoopAddLocation(NPC, -85.62, -0.09, -180.8, 2, 0)
	MovementLoopAddLocation(NPC, -89.13, -0.06, -175.07, 2, 0)
	MovementLoopAddLocation(NPC, -88.16, -0.09, -155.92, 2, 0)
	MovementLoopAddLocation(NPC, -82.2, -0.08, -153.12, 2, 0)
	MovementLoopAddLocation(NPC, -58.56, -0.13, -152.77, 2, 0)
	MovementLoopAddLocation(NPC, -34.47, -0.08, -130.82, 2, 0)
	MovementLoopAddLocation(NPC, -34.47, -0.08, -130.82, 2, 0)
	MovementLoopAddLocation(NPC, -34.08, -0.03, -110.26, 2, 0)
	MovementLoopAddLocation(NPC, -12.93, -0.1, -89.93, 2, 0, "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    MovementLoopAddLocation(NPC, -12.93, -0.1, -89.93, 2, 0)
	MovementLoopAddLocation(NPC, 2.15, -0.03, -106.23, 2, 0)
	MovementLoopAddLocation(NPC, 5.87, -0.02, -108.25, 2, 0)
	MovementLoopAddLocation(NPC, 12.28, 0.18, -103.52, 2, 0)
	MovementLoopAddLocation(NPC, 21.4, 0.12, -94.55, 2, 0)
	MovementLoopAddLocation(NPC, 21.42, 0.47, -67.62, 2, 0)
	MovementLoopAddLocation(NPC, 14.27, -0.11, -60.73, 2, 0)
	MovementLoopAddLocation(NPC, -2.81, -0.09, -59.95, 2, 0)
	MovementLoopAddLocation(NPC, -14.76, -0.07, -48.36, 2, 0)
	MovementLoopAddLocation(NPC, -14.94, -0.11, -41.49, 2, 0)
	MovementLoopAddLocation(NPC, -1.56, 0.17, -27.95, 2, 0)
	MovementLoopAddLocation(NPC, -0.23, -0.11, -21.61, 2, 0)
	MovementLoopAddLocation(NPC, -0.17, -0.08, -18.38, 2, 0)
	MovementLoopAddLocation(NPC, 0.14, -0.11, -23.37, 2, 0)
	MovementLoopAddLocation(NPC, -3.09, -0.1, -30.03, 2, 0)
	MovementLoopAddLocation(NPC, -14.32, -0.1, -40.65, 2, 0)
	MovementLoopAddLocation(NPC, -15.24, -0.1, -48.01, 2, 0)
	MovementLoopAddLocation(NPC, -5.73, -0.11, -57.48, 2, 0)
	MovementLoopAddLocation(NPC, -1.9, -0.11, -60.12, 2, 0)
	MovementLoopAddLocation(NPC, 14.39, -0.12, -61.1, 2, 0)
	MovementLoopAddLocation(NPC, 18.11, -0.1, -63.59, 2, 0)
	MovementLoopAddLocation(NPC, 21.41, -0.08, -70.98, 2, 0)
	MovementLoopAddLocation(NPC, 20.96, 0.11, -95.74, 2, 0)
	MovementLoopAddLocation(NPC, 6.87, -0.05, -108.98, 2, 0)
	MovementLoopAddLocation(NPC, 2.94, -0.05, -106.79, 2, 0)
	MovementLoopAddLocation(NPC, -12.93, -0.1, -89.93, 2, 0, "ChooseMovement")
end



function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end