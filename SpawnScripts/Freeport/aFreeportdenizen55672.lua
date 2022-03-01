--[[
    Script Name    : SpawnScripts/Freeport/aFreeportdenizen55672.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.03 09:05:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
MoveToLocation(NPC, -144.42, -52.97, -274.36, 2)
MoveToLocation(NPC, -122.38, -45.85, -267.94, 2)
MoveToLocation(NPC, -105.71, -42.63, -303.44, 2)
MoveToLocation(NPC, -106.99, -34.63, -350.79, 2)
MoveToLocation(NPC, -109.79, -34.63, -351.12, 2, "heading")
end

function heading(NPC)
SetHeading(NPC, 98.85)
AddTimer(NPC, 10000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
MoveToLocation(NPC, -106.99, -34.63, -350.79, 2)
MoveToLocation(NPC, -105.71, -42.63, -303.44, 2)    
MoveToLocation(NPC, -122.38, -45.85, -267.94, 2)
MoveToLocation(NPC, -144.42, -52.97, -274.36, 2)
MoveToLocation(NPC, -165.42, -52.84, -284.11, 2, "heading2")
end

function heading2(NPC)
SetHeading(NPC, 80.13)
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