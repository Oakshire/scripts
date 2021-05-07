--[[
    Script Name    : SpawnScripts/Freeport/aFreeportdenizen55659.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.06 08:05:49
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
	MoveToLocation(NPC, -162.09, -46.74, 205.00, 2)
	MoveToLocation(NPC, -151.24, -35.20, 172.48, 2)
	MoveToLocation(NPC, -142.75, -35.20, 174.01, 2)
	MoveToLocation(NPC, -148.86, -30.49, 209.21, 2)
	MoveToLocation(NPC, -154.25, -30.25, 229.99, 2)
	MoveToLocation(NPC, -162.06, -30.25, 229.15, 2)
	MoveToLocation(NPC, -170.19, -28.97, 225.48, 2, "heading")
end	

function heading(NPC, Spawn)
	SetHeading(NPC, 48.73)
	AddTimer(NPC, 10000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
  	MoveToLocation(NPC, -162.06, -30.25, 229.15, 2)
    MoveToLocation(NPC, -154.25, -30.25, 229.99, 2)
    MoveToLocation(NPC, -148.86, -30.49, 209.21, 2)
    MoveToLocation(NPC, -142.75, -35.20, 174.01, 2)
    MoveToLocation(NPC, -151.24, -35.20, 172.48, 2)
    MoveToLocation(NPC, -162.09, -46.74, 205.00, 2)
    MoveToLocation(NPC, -170.61, -46.78, 204.42, 2, "heading2")
end   

function heading2(NPC, Spawn)
	SetHeading(NPC, 92.45)
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