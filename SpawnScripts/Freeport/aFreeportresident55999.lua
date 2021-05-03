--[[
    Script Name    : SpawnScripts/Freeport/aFreeportresident55999.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.02 05:05:21
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
   MoveToLocation(NPC, -92.76, -34.59, -269.72, 2)
   MoveToLocation(NPC, -100.26, -33.51, -272.97, 2)
   MoveToLocation(NPC, -99.54, -33.51, -277.09, 2)
   MoveToLocation(NPC, -90.72, -33.51, -275.36, 2)
   MoveToLocation(NPC, -83.10, -33.51, -302.81, 2)
   MoveToLocation(NPC, -81.70, -33.51, -330.80, 2)
   MoveToLocation(NPC, -85.34, -33.51, -330.74, 2)
   MoveToLocation(NPC, -85.51, -33.51, -335.13, 2, "heading")
end


function heading(NPC)
SetHeading(NPC, 30.53)
AddTimer(NPC, 15000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
        MoveToLocation(NPC, -85.34, -33.51, -330.74, 2)
        MoveToLocation(NPC, -81.70, -33.51, -330.80, 2) 
          MoveToLocation(NPC, -83.10, -33.51, -302.81, 2)
           MoveToLocation(NPC, -90.72, -33.51, -275.36, 2)
            MoveToLocation(NPC, -99.54, -33.51, -277.09, 2)
              MoveToLocation(NPC, -100.26, -33.51, -272.97, 2)
                MoveToLocation(NPC, -92.76, -34.59, -269.72, 2)
    MoveToLocation(NPC, -94.50, -34.58, -264.63, 2, "heading2")
end

function heading2(NPC)
SetHeading(NPC, 148.40)
AddTimer(NPC, 15000, "movement_loop_start", 1)
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