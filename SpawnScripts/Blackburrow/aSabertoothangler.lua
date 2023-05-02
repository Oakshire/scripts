--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothangler.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.11 06:07:42
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
    VoiceBox(NPC)
    ChooseMovement(NPC)
end

function VoiceBox(NPC)
 	local choice = MakeRandomInt(1,2)
 	if choice == 1 then    
    dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")
 	elseif choice == 2 then 
 	dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll1.lua")
    end
end
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
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
    MovementLoopAddLocation(NPC, X + 2, Y, Z - 1, 2,math.random(5,10))
	MovementLoopAddLocation(NPC, X + 2, Y, Z + 2, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 2, Y, Z - 2, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 2, Y, Z + 2, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X - 2, Y, Z + 2, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 2, Y, Z - 2, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 2, Y, Z + 1, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 2, Y, Z - 2, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 2, Y, Z + 2, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 2, Y, Z - 2, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 2, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 2, Y, Z - 2, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 2, Y, Z - 2, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 2, Y, Z + 2, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 2, Y, Z + 1, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 2, Y, Z + 2, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end