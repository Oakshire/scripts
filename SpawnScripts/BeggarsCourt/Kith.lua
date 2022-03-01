--[[
    Script Name    : SpawnScripts/BeggarsCourt/Kith.lua
    Script Author  : Cynnar
    Script Date    : 2018.07.08 10:07:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)local X = GetX(NPC)
	local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
	MoveToLocation(NPC, 24.70, 3.50, 1.07)
	MovementLoopAddLocation(NPC, X + math.random(3,10), Y, Z + math.random(3,10), 2, math.random(20,45))
	MovementLoopAddLocation(NPC, 24.70, 3.50, 1.07, 2, 0)
	MovementLoopAddLocation(NPC, X - math.random(3,10), Y, Z - math.random(3,10), 2, math.random(20,45))
	MovementLoopAddLocation(NPC, 24.70, 3.50, 1.07, 2, 0)
	MovementLoopAddLocation(NPC, X + math.random(3,10), Y, Z + math.random(3,10), 2, math.random(20,45))
	MovementLoopAddLocation(NPC, 24.70, 3.50, 1.07, 2, 0)
	MovementLoopAddLocation(NPC, X - math.random(3,10), Y, Z - math.random(3,10), 2, math.random(20,45))
end
