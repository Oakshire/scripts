--[[
    Script Name    : SpawnScripts/Classic_forest/aruinsskulker.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.14 07:10:56
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC,math.random (2000,6000),"EmoteLoop")
  
--ChooseMovement(NPC)
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
    MovementLoopAddLocation(NPC, X + 8, Y, Z, 2,math.random(5,10))
	MovementLoopAddLocation(NPC, X + 8, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 10, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 8, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X - 8, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 8, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 10, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 8, Y, Z - 4,2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 8, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 8, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 10, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 8, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 8, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 8, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 10, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 8, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function EmoteLoop(NPC,Spawn)
   if IsInCombat(NPC) == false and HasMoved(NPC)==false then
        choice = MakeRandomInt(1,12)
        if choice == 1 then
 	    PlayFlavor(NPC, "", "", "treaten", 0, 0, Spawn, 0)
        elseif choice == 2 then
 	    PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn, 0)            
        elseif choice == 3 then
 	    PlayFlavor(NPC, "", "", "frustrated", 0, 0, Spawn, 0) 
        elseif choice == 4 then
 	    PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn, 0)
 	    elseif choice == 5 then
 	    PlayFlavor(NPC, "", "", "feint", 0, 0, Spawn, 0)
 	    elseif choice == 6 then
 	    PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn, 0)
 	    elseif choice == 7 then
 	    PlayFlavor(NPC, "", "", "taunt", 0, 0, Spawn, 0)
 	    elseif choice == 8 then
 	    PlayFlavor(NPC, "", "", "stare", 0, 0, Spawn, 0)
 	    elseif choice == 9 then
 	    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn, 0)
 	    elseif choice == 10 then
 	    PlayFlavor(NPC, "", "", "cackle", 0, 0, Spawn, 0)
 	    elseif choice == 11 then
 	    PlayFlavor(NPC, "", "", "doubletake", 0, 0, Spawn, 0)
 	    elseif choice == 12 then
 	    PlayFlavor(NPC, "", "", "tantrum_short", 0, 0, Spawn, 0)
 	    end
 	    AddTimer(NPC,MakeRandomInt(7000,9000),"EmoteLoop")    
        else
 	    AddTimer(NPC,MakeRandomInt(10000,11000),"EmoteLoop") 
 	    end
   
    end   