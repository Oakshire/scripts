--[[
    Script Name    : SpawnScripts/Freeport/aFreeportresident56715.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.09 07:05:12
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
	MoveToLocation(NPC, -97.38, -18.02, 271.73, 2)
	MoveToLocation(NPC, -114.80, -18.02, 261.90, 2)
	MoveToLocation(NPC, -119.00, -18.02, 245.77, 2)
	MoveToLocation(NPC, -112.55, -25.01, 224.20, 2)
	MoveToLocation(NPC,  -146.78, -30.44, 213.19, 2)
	MoveToLocation(NPC, -151.59, -30.28, 226.77, 2)
	MoveToLocation(NPC, -139.19, -30.24, 244.67, 2, "heading")
end

function heading(NPC, Spawn)
SetHeading(NPC, 207.86)
AddTimer(NPC, 10000, "movement_loop_continue", 1)
end

function heading2(NPC, Spawn)
SetHeading(NPC, 291.4)
AddTimer(NPC, 10000, "movement_loop_start", 1)
end

function movement_loop_continue(NPC)
  	MoveToLocation(NPC, -151.59, -30.28, 226.77, 2)
  	MoveToLocation(NPC,  -146.78, -30.44, 213.19, 2)
  	MoveToLocation(NPC, -112.55, -25.01, 224.20, 2)
  	MoveToLocation(NPC, -119.00, -18.02, 245.77, 2)	
    MoveToLocation(NPC, -114.80, -18.02, 261.90, 2)
    MoveToLocation(NPC, -97.38, -18.02, 271.73, 2)
    MoveToLocation(NPC, -92.85, -18.02, 267.56, 2, "heading2")
end    
    
function respawn(NPC)
	spawn(NPC)
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