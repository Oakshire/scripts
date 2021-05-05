--[[
    Script Name    : SpawnScripts/Freeport/aMilitiaofficer55951.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.04 09:05:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
	MoveToLocation(NPC, -198.19, -55.63, 28.98, 2)
	MoveToLocation(NPC, -200.78, -56.07, 30.34, 2)
	MoveToLocation(NPC, -201.04, -56.07, 103.15, 2)
	MoveToLocation(NPC, -245.27, -55.40, 104.74, 2)
	MoveToLocation(NPC, -251.90, -55.71, 91.48, 2)
	MoveToLocation(NPC, -256.39, -55.71, 88.65, 2, "heading")
end	

function heading(NPC)
SetHeading(NPC, 19.48)
AddTimer(NPC, 10000, "movement_loop_continue", 1)
end


function movement_loop_continue(NPC)
        MoveToLocation(NPC, -251.90, -55.71, 91.48, 2)
		MoveToLocation(NPC, -245.27, -55.40, 104.74, 2)
		MoveToLocation(NPC, -201.04, -56.07, 103.15, 2)
		MoveToLocation(NPC, -200.78, -56.07, 30.34, 2)
		MoveToLocation(NPC, -198.19, -55.63, 28.98, 2)
		MoveToLocation(NPC, -180.78, -56.69, 29.06, 2, "heading2")
end		

function heading2(NPC)
SetHeading(NPC, 234.89)
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