--[[
    Script Name    : SpawnScripts/Freeport/BarberRazorburn.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 08:08:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 15, "InRange", "LeaveRange", Spawn)
end

function InRange(NPC, Spawn)
PlayFlavor(NPC, "", "Snippy snippy!  Clippy Clippy!", "applaude", 1689589577, 4560189, Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 2)
    if choice == 1 then
    PlayFlavor(NPC, "", "Where meez clipclips goez?", "peer", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "Hair choppy now?!", "applaude", 1689589577, 4560189, Spawn)
end
   end

function respawn(NPC)
         spawn(NPC)
end

