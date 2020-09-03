--[[
    Script Name    : SpawnScripts/BeggarsCourt2/abarbariancitizen.lua
    Script Author  : Premierio015
    Script Date    : 2020.09.01 08:09:14
    Script Purpose : 
                   : 
--]]

local QUEST = 579

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "OutRange")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function InRange(NPC, Spawn)
AddTimer(NPC, 5000, "callout", 1, Spawn)
end

function OutRange(NPC, Spawn)

end

function callout(NPC, Spawn)
if GetQuestStep(Spawn, QUEST) == 1 then
PlayFlavor(NPC, "",  "You're new.  You must be here for the meeting.  It's in the northwestern common domicile.", "", 1689589577, 4560189, Spawn)
end
   end

 