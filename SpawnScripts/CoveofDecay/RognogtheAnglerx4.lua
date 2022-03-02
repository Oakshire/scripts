--[[
    Script Name    : SpawnScripts/CoveofDecay/RognogtheAngler.lua
    Script Author  : Neveruary
    Script Date    : 2022.03.01 05:03:34
    Script Purpose : Governs the behavior of Rognog the Angler(x4) in Cove of Decay: Epic Angler.
    Script Notes   : Spell IDs still need to be collected.
--]]

spells = {1, 2, 3, 4, 5} -- need to get spell IDs/names

function spawn(NPC)
end

function aggro(NPC, Spawn)
    AddTimer(NPC, 1000, "spellLoop")
end

function spellLoop(NPC, Spawn) -- Loopback function for spellcasts.
    AddTimer(NPC, math.random(1500,2500), "spellChoice")
end

function spellChoice(NPC, Spawn) -- select a spell from table.
    local hated = GetMostHated(NPC) 
        if hated ~= nil then 
            FaceTarget(NPC, hated) 
            -- CastSpell(hated, spells[math.random(#spells)], 3, NPC)
        end
    AddTimer(NPC, math.random(1500, 2500), "spellLoop")
end

function respawn(NPC)
spawn(NPC)
end

function despawnx2(NPC, Spawn)
    local rognogx2 = GetSpawn(NPC, 3110002)
    if rognogx2 ~= nil then
        Despawn(rognogx2)
    end
end