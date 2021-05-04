--[[
    Script Name    : SpawnScripts/Freeport/aMilitiaguard55534.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.03 09:05:56
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
    MoveToLocation(NPC, -194.12, -55.93, -97.84, 2)
	MoveToLocation(NPC, -201.06, -56.07, -31.39, 2)
	MoveToLocation(NPC, -157.47, -52.59, -21.55, 2, "heading")
end	

function heading(NPC)
SetHeading(NPC, 281.97)
AddTimer(NPC, 10000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
  MoveToLocation(NPC, -201.06, -56.07, -31.39, 2) 
  MoveToLocation(NPC, -194.12, -55.93, -97.84, 2)
  MoveToLocation(NPC, -187.80, -56.43, -107.13, 2)
  MoveToLocation(NPC, -206.31, -58.87, -114.96, 2, "heading2")
  end
  
  
function heading2(NPC)
SetHeading(NPC, 71.44)
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
	
	local speech_choice = math.random(1, 3)
    if speech_choice == 1 then
    PlayFlavor(NPC, "", "Do not challenge my authority, citizen.  In Freeport, the Overlord's word is law!", "scold", 1689589577, 4560189, Spawn)
    elseif speech_choice == 2 then
    PlayFlavor(NPC, "", "The Overlord commands me to patrol this area, and so I must.", "tapfoot", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "Do you have business with the Freeport Militia?", "glare", 1689589577, 4560189, Spawn)
    end
end
  

function respawn(NPC)
	spawn(NPC)
end