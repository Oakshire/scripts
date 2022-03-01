--[[
    Script Name    : SpawnScripts/Freeport/DecimusEonus.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 10:07:57
    Script Purpose : 
                   : 
--]]


dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
movement_loop_start(NPC)
end


function movement_loop_start(NPC)
    MoveToLocation(NPC, -160.03, -30.24, 251.79, 2)
	MoveToLocation(NPC, -147.96, -30.24, 244.01, 2)
	MoveToLocation(NPC, -144.88, -30.24, 237.96, 2)
	MoveToLocation(NPC, -152.04, -30.30, 224.31, 2)
	MoveToLocation(NPC, -141.78, -35.20, 174.48, 2)
	MoveToLocation(NPC, -148.05, -35.20, 170.02, 2)
	MoveToLocation(NPC, -154.36, -35.20, 168.85, 2, "heading")
end	

function heading(NPC)
    SetHeading(NPC, 85.99)
    AddTimer(NPC, 11000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
    MoveToLocation(NPC, -148.05, -35.20, 170.02, 2)
    MoveToLocation(NPC, -141.78, -35.20, 174.48, 2)
    MoveToLocation(NPC, -152.04, -30.30, 224.31, 2)
	MoveToLocation(NPC, -144.88, -30.24, 237.96, 2)
	MoveToLocation(NPC, -147.96, -30.24, 244.01, 2)
	MoveToLocation(NPC, -160.03, -30.24, 251.79, 2, "heading2")
end	


function heading2(NPC)
      SetHeading(NPC, 172.81)
      AddTimer(NPC, 11000, "movement_loop_start", 1)
end



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn, Faction)
	local choice = MakeRandomInt(1, 2)
	if choice == 1 then
	AddTimer(NPC, 100000, "movement_loop_start", 1)
	else
	AddTimer(NPC, 100000, "movement_loop_continue", 1)
end
   end

function respawn(NPC)
spawn(NPC)
end

