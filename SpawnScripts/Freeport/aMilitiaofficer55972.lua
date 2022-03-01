--[[
    Script Name    : SpawnScripts/Freeport/aMilitiaofficer55972.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.29 07:04:22
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
MoveToLocation(NPC, 254.97, -4.73, 159.77, 2)
MoveToLocation(NPC, 257.87, -3.88, 151.19, 2)
MoveToLocation(NPC, 272.88, -3.78, 149.96, 2)
MoveToLocation(NPC, 282.59, -3.86, 135.39, 2)
MoveToLocation(NPC, 292.04, -3.88, 132.28, 2)
MoveToLocation(NPC, 296.54, -4.40, 129.67, 2, "heading")
end    

function heading(NPC)
SetHeading(NPC, 312.53)
AddTimer(NPC, 7000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
MoveToLocation(NPC, 292.04, -3.88, 132.28, 2)
MoveToLocation(NPC, 282.59, -3.86, 135.39, 2)  
MoveToLocation(NPC, 272.88, -3.78, 149.96, 2)
MoveToLocation(NPC, 257.87, -3.88, 151.19, 2)
MoveToLocation(NPC, 254.97, -4.73, 159.77, 2, "heading2")
end


function heading2(NPC)
SetHeading(NPC, 189.11)
AddTimer(NPC, 7000, "movement_loop_start", 1)
end
    
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 2)
	if choice == 1 then
	AddTimer(NPC, 7000, "movement_loop_start", 1)
	else
	AddTimer(NPC, 7000, "movement_loop_continue", 1)
end
    end


function respawn(NPC)
	spawn(NPC)
end