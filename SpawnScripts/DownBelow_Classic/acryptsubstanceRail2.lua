--[[
    Script Name    : SpawnScripts/DownBelow_Classic/acryptsubstanceRail2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.12 07:11:43
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

    --AddTimer(NPC,(MakeRandomInt(5000,6000)),"ChooseMovement")
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
    MovementLoopAddLocation(NPC, -128.28, -0.12, -136.44, 2, 0)
	MovementLoopAddLocation(NPC, -127.63, 0.35, -128.26, 2, 0)
	MovementLoopAddLocation(NPC, -122.16, 0.56, -120.38, 2, 0)
	MovementLoopAddLocation(NPC, -113.81, -0.14, -115.16, 2, 0)
	MovementLoopAddLocation(NPC, -106.32, -0.13, -117.06, 2, 0)
	MovementLoopAddLocation(NPC, -87.83, -0.08, -134.85, 2, 0)
	MovementLoopAddLocation(NPC, -103.93, -0.09, -118.45, 2, 0)
	MovementLoopAddLocation(NPC, -107.44, -0.12, -116.05, 2, 0)
	MovementLoopAddLocation(NPC, -113.72, -0.1, -115.79, 2, 0)
	MovementLoopAddLocation(NPC, -121.54, 0.51, -119.76, 2, 0)
	MovementLoopAddLocation(NPC, -127.27, 0.03, -126.7, 2, 0)
	MovementLoopAddLocation(NPC, -128.2, -0.13, -137.16, 2, 0, "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    MovementLoopAddLocation(NPC, -128.2, -0.13, -137.16, 2, 0)
	MovementLoopAddLocation(NPC, -151.92, -0.11, -136.84, 2, 0)
	MovementLoopAddLocation(NPC, -156.74, -0.05, -135.94, 2, 0)
	MovementLoopAddLocation(NPC, -158.81, -0.05, -132.26, 2, 0)
	MovementLoopAddLocation(NPC, -158.1, -0.07, -108.92, 2, 0)
	MovementLoopAddLocation(NPC, -157.15, 0.33, -105.8, 2, 0)
	MovementLoopAddLocation(NPC, -146.23, -0.12, -79.18, 2, 0)
	MovementLoopAddLocation(NPC, -158.49, -0.06, -110.44, 2, 0)
	MovementLoopAddLocation(NPC, -158.87, 0, -131.56, 2, 0)
	MovementLoopAddLocation(NPC, -157.68, -0.04, -134.16, 2, 0)
	MovementLoopAddLocation(NPC, -156.09, -0.06, -136.1, 2, 0)
	MovementLoopAddLocation(NPC, -130.92, -0.05, -136.47, 2, 0)
	MovementLoopAddLocation(NPC, -128.2, -0.13, -137.16, 2, 0, "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    MovementLoopAddLocation(NPC, -128.2, -0.13, -137.16, 2, 0)
	MovementLoopAddLocation(NPC, -127.9, -0.09, -144.12, 2, 0)
	MovementLoopAddLocation(NPC, -124.11, -0.1, -149.26, 2, 0)
	MovementLoopAddLocation(NPC, -121.28, 0.4, -151.86, 2, 0)
	MovementLoopAddLocation(NPC, -119.44, -0.08, -156.46, 2, 0)
	MovementLoopAddLocation(NPC, -119.57, -0.12, -176.72, 2, 0)
	MovementLoopAddLocation(NPC, -121.85, 0.53, -180.23, 2, 0)
	MovementLoopAddLocation(NPC, -127.11, -0.08, -181.54, 2, 0)
	MovementLoopAddLocation(NPC, -137.84, -0.32, -180.58, 2, 0)
	MovementLoopAddLocation(NPC, -149.86, -0.34, -176.32, 2, 0)
	MovementLoopAddLocation(NPC, -159.7, -0.34, -171.93, 2, 0)
	MovementLoopAddLocation(NPC, -165.1, 0.15, -171.13, 2, 0)
	MovementLoopAddLocation(NPC, -172.22, -0.1, -174.76, 2, 0)
	MovementLoopAddLocation(NPC, -173.23, -0.08, -181.56, 2, 0)
	MovementLoopAddLocation(NPC, -173.82, -0.07, -187.26, 2, 0)
	MovementLoopAddLocation(NPC, -176.76, -0.08, -189.14, 2, 0)
	MovementLoopAddLocation(NPC, -180.28, -0.14, -189.89, 2, 0)
	MovementLoopAddLocation(NPC, -183.87, -0.09, -189.87, 2, 0)
	MovementLoopAddLocation(NPC, -179.52, -0.12, -189.62, 2, 0)
	MovementLoopAddLocation(NPC, -175.26, -0.05, -188.5, 2, 0)
	MovementLoopAddLocation(NPC, -173.83, -0.16, -186.16, 2, 0)
	MovementLoopAddLocation(NPC, -173.06, -0.06, -181.01, 2, 0)
	MovementLoopAddLocation(NPC, -172.01, -0.1, -174.74, 2, 0)
	MovementLoopAddLocation(NPC, -166.02, 0.38, -171.28, 2, 0)
	MovementLoopAddLocation(NPC, -160.66, -0.29, -171.5, 2, 0)
	MovementLoopAddLocation(NPC, -150.21, -0.34, -175.95, 2, 0)
	MovementLoopAddLocation(NPC, -138.22, -0.31, -180.74, 2, 0)
	MovementLoopAddLocation(NPC, -127.92, -0.08, -181.49, 2, 0)
	MovementLoopAddLocation(NPC, -122.35, 0.46, -180.56, 2, 0)
	MovementLoopAddLocation(NPC, -119.5, -0.15, -175.37, 2, 0)
	MovementLoopAddLocation(NPC, -119.46, -0.1, -160.9, 2, 0)
	MovementLoopAddLocation(NPC, -120.44, 0.27, -152.8, 2, 0)
	MovementLoopAddLocation(NPC, -123.36, -0.08, -149.91, 2, 0)
	MovementLoopAddLocation(NPC, -127.61, -0.06, -145.37, 2, 0)
	MovementLoopAddLocation(NPC, -128.2, -0.13, -137.16, 2, 0, "ChooseMovement")
end



function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end