--[[
    Script Name    : SpawnScripts/Freeport/BoddyRunewick.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 07:07:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "", "My Bootstrutter's Field Guide mentions a second building very similar to Zarvonn's tower. As soon as I graduate, I aim to find that second tower! Who knows? Maybe I'll find Jusathorn's long-lost spellbook!", "happy", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "Is it true that Dolon Cogshimmer made an illusion of the Overlord?  I wonder what happened to him???", "ponder", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "I hear that it was the necromancers, not coercers that killed the study of illusions.", "", 1689589577, 4560189, Spawn)
    end
end

function respawn(NPC)

end

--[[     PlayFlavor(NPC, "", "Humble apologies, sir!", "cringe", 1689589577, 4560189, Spawn) -- ]]

