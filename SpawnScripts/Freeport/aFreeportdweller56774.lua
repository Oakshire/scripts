--[[
    Script Name    : SpawnScripts/Freeport/aFreeportdweller56774.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.03 08:05:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
MoveToLocation(NPC, -272.91, -56.07, -79.72, 2)
MoveToLocation(NPC, -211.88, -56.07, -81.25, 2)
MoveToLocation(NPC,  -211.68, -56.07, -82.88, 2, "heading")   
end
    
function heading(NPC)
SetHeading(NPC, 359.44)
AddTimer(NPC, 10000, "movement_loop_continue", 1)
end

function heading2(NPC)
SetHeading(NPC, 174.88)
AddTimer(NPC, 7000, "movement_loop_start")
end

function movement_loop_continue(NPC)
MovementLoopAddLocation(NPC, -211.88, -56.07, -81.25, 2, 0)    
MovementLoopAddLocation(NPC, -272.91, -56.07, -79.72, 2, 0)   
MovementLoopAddLocation(NPC, -276.83, -55.5, -72, 2, 0, "heading2")
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