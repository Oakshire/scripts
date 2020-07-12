--[[
    Script Name    : SpawnScripts/Freeport/adrunksailor.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.11 09:07:19
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 15, "InRange", "LeaveRange", Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 2)
    if choice == 1 then
    PlayFlavor(NPC, "", "I don't know what to tell you, mate. If the Traders haven't found your brother by now, I'm afraid he's probably gone to the Hold of Prexus.", "sigh", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "It's been a long time since we've seen any refugees from the Outpost of the Overlord. Have they all been rescued?", "confused", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "I'm beginning to miss those young adventurers running about town, solving everyone's problems. Good work is hard to find!", "shame", 1689589577, 4560189, Spawn)
end
    end

function InRange(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "", "Captain Gullham and his men left port for the Outpost of the Overlord several moons ago. Neither he, nor his ship, the Callisto Prince, has been seen since!", "no", 1689589577, 4560189, Spawn)
end

function LeaveRange(NPC, Spawn)

end
function respawn(NPC)

end

