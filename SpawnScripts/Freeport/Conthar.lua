--[[
    Script Name    : SpawnScripts/Freeport/Conthar.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.18 09:07:17
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
MoveToLocation(NPC, 35.67, -11.84, 194.84, 2)
MoveToLocation(NPC, 38.68, -12.09, 184.16, 2)
MoveToLocation(NPC, 50.30, -12.09, 178.56, 2)
MoveToLocation(NPC, 61.03, -12.10, 161.16, 2, "heading")
end


function heading(NPC)
SetHeading(NPC, 337.74)
AddTimer(NPC, 10000, "movement_loop_continue", 1)
end

function heading2(NPC)
SetHeading(NPC, 179.10)
AddTimer(NPC, 10000, "movement_loop_start", 1)
end

function movement_loop_continue(NPC)
MoveToLocation(NPC, 56.11, -12.08, 179.73, 2)
MoveToLocation(NPC, 61.33, -12.09, 189.03, 2)
MoveToLocation(NPC, 62.46, -12.09, 195.40, 2)
MoveToLocation(NPC, 58.07, -12.09, 209.48, 2)
MoveToLocation(NPC, 60.92, -12.10, 230.18, 2, "heading2")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
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
