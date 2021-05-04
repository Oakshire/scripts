--[[
    Script Name    : SpawnScripts/Freeport/aFreeportresident55824.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.03 07:05:05
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
MoveToLocation(NPC, -146.96, -43.40, -167.62, 2)
MoveToLocation(NPC, -145.85, -46.08, -175.91, 2)
MoveToLocation(NPC, -142.79, -46.08, -182.24, 2)
MoveToLocation(NPC, -136.87, -46.08, -185.39, 2)
MoveToLocation(NPC, -123.51, -46.07, -183.66, 2)
MoveToLocation(NPC, -105.34, -46.04, -196.39, 2)
MoveToLocation(NPC, -125.85, -40.33, -206.69, 2)
MoveToLocation(NPC, -116.61, -40.33, -238.42, 2)
MoveToLocation(NPC, -101.61, -40.33, -243.77, 2)
MoveToLocation(NPC, -99.86, -40.35, -248.10, 2, "heading")
end   

function heading(NPC)
SetHeading(NPC, 337.93)
AddTimer(NPC, 10000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
MoveToLocation(NPC, -101.61, -40.33, -243.77, 2)
MoveToLocation(NPC, -116.61, -40.33, -238.42, 2)
MoveToLocation(NPC, -125.85, -40.33, -206.69, 2)
MoveToLocation(NPC, -105.34, -46.04, -196.39, 2)
MoveToLocation(NPC, -123.51, -46.07, -183.66, 2)
MoveToLocation(NPC, -136.87, -46.08, -185.39, 2)
MoveToLocation(NPC, -142.79, -46.08, -182.24, 2)
MoveToLocation(NPC, -145.85, -46.08, -175.91, 2)
MoveToLocation(NPC, -146.96, -43.40, -167.62, 2)
MoveToLocation(NPC, -140.90, -41.22, -161.42, 2, "heading2")
end

function heading2(NPC)
SetHeading(NPC, 224.38)
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