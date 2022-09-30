--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothrunt.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 05:09:30
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin2.lua")

function spawn(NPC)
    ChooseMovement(NPC)
end

function ChooseMovement(NPC)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC, Spawn)
	elseif route == 2 then
	    RouteTwo(NPC, Spawn)
	elseif route == 3 then
	    RouteThree(NPC, Spawn)
	elseif route == 4 then
	    RouteFour(NPC, Spawn)
	end
end

function RouteOne(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X + 12, Y, Z, 2,math.random(5,10))
    MovementLoopAddLocation(NPC, X + 12, Y, Z + 4, 2 , 15 , "InitialPause")
	MovementLoopAddLocation(NPC, X + 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 5, Y, Z + 4, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 4, 15 , "InitialPause")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 15 , "InitialPause")
    MovementLoopAddLocation(NPC, X - 5, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X - 14, Y, Z - 4, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 12, Y, Z, 2, 15 , "InitialPause")
	MovementLoopAddLocation(NPC, X - 12, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, 0)
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 15 , "InitialPause")
    MovementLoopAddLocation(NPC, X + 12, Y, Z, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 5, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z, 2, 15 , "InitialPause")
	MovementLoopAddLocation(NPC, X + 12, Y, Z - 4, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 4, math.random(5,10))
    MovementLoopAddLocation(NPC, X - 12, Y, Z, 2, 15 , "InitialPause")
	MovementLoopAddLocation(NPC, X - 5, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 12, Y, Z + 4, 2, 15 , "InitialPause")
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function InitialPause(NPC)

    math.randomseed(os.time())
    local pause = math.random (1, 4)

            if pause == 1 then
                    AddTimer(NPC, 100, "stop_gathering")  
            else
                    AddTimer(NPC, 1000, "Gather")
            end 
end

function Gather(NPC)
    SpawnSet(NPC, "visual_state", "2809")	-- Start gathering
    AddTimer(NPC, 8000, "Collect")	        -- for 5 seconds, then stop
end

function Collect(NPC)
    SpawnSet(NPC, "visual_state", "2810")	-- Start gathering
    AddTimer(NPC, 2000, "stop_gathering")	-- for 5 seconds, then stop
end

function stop_gathering(NPC)
    SpawnSet(NPC, "visual_state", "0") 	        -- Stop gathering
end

function aggro(NPC,Spawn)
        SpawnSet(NPC, "visual_state", "0") 	        -- Stop gathering
end