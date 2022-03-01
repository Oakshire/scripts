--[[
    Script Name    : SpawnScripts/Freeport/Whisper.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.10 08:08:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 2)
    if choice == 1 then
    PlayFlavor(NPC, "", "Jackal knows where you are at all times.", "scold", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "The Overlord pays us quite well for our expertise.", "smirk", 1689589577, 4560189, Spawn)
   end
end

function respawn(NPC)

end

