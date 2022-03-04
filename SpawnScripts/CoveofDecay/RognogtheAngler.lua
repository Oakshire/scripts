--[[
    Script Name    : SpawnScripts/CoveofDecay/RognogtheAngler.lua
    Script Author  : Neveruary
    Script Date    : 2022.03.01 05:03:34
    Script Purpose : Governs the behavior of Rognog the Angler(x2) in Cove of Decay: Epic Angler.
    Script Notes   : Spell IDs still need to be collected.
--]]

spells = {1, 2, 3, 4, 5} -- need to get spell IDs/names
catchIDs = {347235, 347236, 347237, 347238, 347239,
            347240, 347241, 347242, 347423, 347424,
            347425, 347426} -- location IDs of "a catch". Rognog attacks when these are all dead.

function spawn(NPC)
end

function attacked (NPC, Spawn) -- this function receives Spawn as a second param from "a catch"
    AddTimer(NPC, 1000, "spellLoop")
end

function respawn(NPC)
spawn(NPC)
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

function healthchanged(NPC, Spawn)
    if GetHP(NPC) <= GetMaxHP * 0.5 then
        AddTimer(NPC, 1000, "spawnx4")
    end
end

function spawnx4(NPC, Spawn)
    local zone = GetZone(NPC)
    local rognogx4 = SpawnByLocationID(zone, 133772888)
        if rognogx4 ~= nil then
            AddTimer(NPC, 1000, "despawnx2")
        end
end