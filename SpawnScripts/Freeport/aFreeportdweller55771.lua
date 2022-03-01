--[[
    Script Name    : SpawnScripts/Freeport/aFreeportdweller55771.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.04 08:05:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
	MoveToLocation(NPC, -207.81, -56.07, 93.64, 2)
	MoveToLocation(NPC, -213.14, -56.10, 69.60, 2)
	MoveToLocation(NPC, -263.67, -56.07, 68.09, 2)
	MoveToLocation(NPC, -263.63, -56.07, 58.46, 2, "heading")
end	

function heading(NPC)
SetHeading(NPC, 359.46)
AddTimer(NPC, 10000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
    MoveToLocation(NPC, -263.67, -56.07, 68.09, 2)
    MoveToLocation(NPC, -213.14, -56.10, 69.60, 2)
    MoveToLocation(NPC, -207.81, -56.07, 93.64, 2)
    MoveToLocation(NPC, -200.53, -55.81, 93.87, 2, "heading2")
end   

function heading2(NPC)
SetHeading(NPC, 269.14)
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