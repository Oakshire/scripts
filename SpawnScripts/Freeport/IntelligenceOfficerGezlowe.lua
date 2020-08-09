--[[
    Script Name    : SpawnScripts/Freeport/IntelligenceOfficerGezlowe.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 07:08:31
    Script Purpose : 
                   : 
--]]

local QUEST = 573

function spawn(NPC)
ProvidesQuest(NPC, QUEST)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end


function InRange(NPC, Spawn)
if HasQuest(Spawn, QUEST)
PlayFlavor(NPC, "", "You there!  If you don't wish to be found in violation of treason, you'd better have a word with me.", "attention", 1689589577, 4560189, Spawn)
end
   end

function LeaveRange(NPC, Spawn)

end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Move along, move along.", "", 1689589577, 4560189, Spawn)     
end

function respawn(NPC)

end

