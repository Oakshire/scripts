--[[
    Script Name    : SpawnScripts/Freeport/aFreeportconscript56692.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.04 09:05:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
	MoveToLocation(NPC, -283.99, -56.07, 76.54, 2)
	MoveToLocation(NPC, -276.56, -56.16, 92.08, 2)
	MoveToLocation(NPC, -231.85, -55.71, 90.52, 2)
	MoveToLocation(NPC, -231.72, -55.71, 88.54, 2, "heading")
end	

function heading(NPC)
SetHeading(NPC, 358.23)
AddTimer(NPC, 10000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
 	MoveToLocation(NPC, -231.85, -55.71, 90.52, 2)
 	MoveToLocation(NPC, -276.56, -56.16, 92.08, 2)
 	MoveToLocation(NPC, -283.99, -56.07, 76.54, 2)
 	MoveToLocation(NPC, -298.52, -55.81, 58.52, 2, "heading2")
end 

function heading2(NPC)
SetHeading(NPC, 0.015)
AddTimer(NPC, 10000, "movement_loop_start", 1)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 2)
	if choice == 1 then
	AddTimer(NPC, 10000, "movement_loop_start", 1)
	else
	AddTimer(NPC, 10000, "movement_loop_continue", 1)
end
   end

function respawn(NPC)
	spawn(NPC)
end