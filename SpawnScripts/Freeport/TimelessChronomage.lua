--[[
    Script Name    : SpawnScripts/Freeport/TimelessChronomage.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.13 07:07:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Greetings, traveler. I would love to show you my skills, but you're not yet powerful enough to survive the magic. Return to me once you are, and I'll help you see the world!", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

