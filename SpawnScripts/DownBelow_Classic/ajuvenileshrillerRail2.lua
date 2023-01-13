--[[
    Script Name    : SpawnScripts/DownBelow_Classic/ajuvenileshrillerRail2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.11 09:11:28
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
    MovementLoopAddLocation(NPC, -128.28, 2, -136.44, 2, 0)
	MovementLoopAddLocation(NPC, -127.63, 2, -128.26, 2, 0)
	MovementLoopAddLocation(NPC, -122.16, 2, -120.38, 2, 0)
	MovementLoopAddLocation(NPC, -113.81, 2, -115.16, 2, 0)
	MovementLoopAddLocation(NPC, -106.32, 2, -117.06, 2, 0)
	MovementLoopAddLocation(NPC, -87.83, 2, -134.85, 2, 0)
	MovementLoopAddLocation(NPC, -103.93, 2, -118.45, 2, 0)
	MovementLoopAddLocation(NPC, -107.44, 2, -116.05, 2, 0)
	MovementLoopAddLocation(NPC, -113.72, 2, -115.79, 2, 0)
	MovementLoopAddLocation(NPC, -121.54, 2, -119.76, 2, 0)
	MovementLoopAddLocation(NPC, -127.27, 2, -126.7, 2, 0)
	MovementLoopAddLocation(NPC, -128.2, 2, -137.16, 2, 0, "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    MovementLoopAddLocation(NPC, -128.2, 2, -137.16, 2, 0)
	MovementLoopAddLocation(NPC, -151.92, 2, -136.84, 2, 0)
	MovementLoopAddLocation(NPC, -156.74, 2, -135.94, 2, 0)
	MovementLoopAddLocation(NPC, -158.81, 2, -132.26, 2, 0)
	MovementLoopAddLocation(NPC, -158.1, 2, -108.92, 2, 0)
	MovementLoopAddLocation(NPC, -157.15, 2, -105.8, 2, 0)
	MovementLoopAddLocation(NPC, -146.23, 2, -79.18, 2, 0)
	MovementLoopAddLocation(NPC, -158.49, 2, -110.44, 2, 0)
	MovementLoopAddLocation(NPC, -158.87, 2, -131.56, 2, 0)
	MovementLoopAddLocation(NPC, -157.68, 2, -134.16, 2, 0)
	MovementLoopAddLocation(NPC, -156.09, 2, -136.1, 2, 0)
	MovementLoopAddLocation(NPC, -130.92, 2, -136.47, 2, 0)
	MovementLoopAddLocation(NPC, -128.2, 2, -137.16, 2, 0, "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    MovementLoopAddLocation(NPC, -128.2, 2, -137.16, 2, 0)
	MovementLoopAddLocation(NPC, -127.9, 2, -144.12, 2, 0)
	MovementLoopAddLocation(NPC, -124.11, 2, -149.26, 2, 0)
	MovementLoopAddLocation(NPC, -121.28, 2, -151.86, 2, 0)
	MovementLoopAddLocation(NPC, -119.44, 2, -156.46, 2, 0)
	MovementLoopAddLocation(NPC, -119.57, 2, -176.72, 2, 0)
	MovementLoopAddLocation(NPC, -121.85, 2, -180.23, 2, 0)
	MovementLoopAddLocation(NPC, -127.11, 2, -181.54, 2, 0)
	MovementLoopAddLocation(NPC, -137.84, 2, -180.58, 2, 0)
	MovementLoopAddLocation(NPC, -149.86, 2, -176.32, 2, 0)
	MovementLoopAddLocation(NPC, -159.7, 2, -171.93, 2, 0)
	MovementLoopAddLocation(NPC, -165.1, 2, -171.13, 2, 0)
	MovementLoopAddLocation(NPC, -172.22, 2, -174.76, 2, 0)
	MovementLoopAddLocation(NPC, -173.23, 2, -181.56, 2, 0)
	MovementLoopAddLocation(NPC, -173.82, 2, -187.26, 2, 0)
	MovementLoopAddLocation(NPC, -176.76, 2, -189.14, 2, 0)
	MovementLoopAddLocation(NPC, -180.28, 2, -189.89, 2, 0)
	MovementLoopAddLocation(NPC, -183.87, 2, -189.87, 2, 0)
	MovementLoopAddLocation(NPC, -179.52, 2, -189.62, 2, 0)
	MovementLoopAddLocation(NPC, -175.26, 2, -188.5, 2, 0)
	MovementLoopAddLocation(NPC, -173.83, 2, -186.16, 2, 0)
	MovementLoopAddLocation(NPC, -173.06, 2, -181.01, 2, 0)
	MovementLoopAddLocation(NPC, -172.01, 2, -174.74, 2, 0)
	MovementLoopAddLocation(NPC, -166.02, 2, -171.28, 2, 0)
	MovementLoopAddLocation(NPC, -160.66, 2, -171.5, 2, 0)
	MovementLoopAddLocation(NPC, -150.21, 2, -175.95, 2, 0)
	MovementLoopAddLocation(NPC, -138.22, 2, -180.74, 2, 0)
	MovementLoopAddLocation(NPC, -127.92, 2, -181.49, 2, 0)
	MovementLoopAddLocation(NPC, -122.35, 2, -180.56, 2, 0)
	MovementLoopAddLocation(NPC, -119.5, 2, -175.37, 2, 0)
	MovementLoopAddLocation(NPC, -119.46, 2, -160.9, 2, 0)
	MovementLoopAddLocation(NPC, -120.44, 2, -152.8, 2, 0)
	MovementLoopAddLocation(NPC, -123.36, 2, -149.91, 2, 0)
	MovementLoopAddLocation(NPC, -127.61, 2, -145.37, 2, 0)
	MovementLoopAddLocation(NPC, -128.2, 2, -137.16, 2, 0, "ChooseMovement")
end



function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end