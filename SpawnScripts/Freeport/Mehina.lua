--[[
    Script Name    : SpawnScripts/Freeport/Mehina.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 03:07:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
 SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "", "These stone walls don't keep things out; they keep us in!", "", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "There's no place for the elderly in this town.", "", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "I don't care what they say.  This town is not much to look at, is it?", "", 1689589577, 4560189, Spawn)
end
   end

function respawn(NPC)

end

function InRange(NPC, Spawn)
local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "", "These stone walls don't keep things out; they keep us in!", "", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "There's no place for the elderly in this town.", "", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "I don't care what they say.  This town is not much to look at, is it?", "", 1689589577, 4560189, Spawn)
end
   end

function LeaveRange(NPC, Spawn)

end
