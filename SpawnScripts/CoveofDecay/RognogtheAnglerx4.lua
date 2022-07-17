--[[
    Script Name    : SpawnScripts/CoveofDecay/RognogtheAngler.lua
    Script Author  : Neveruary
    Script Date    : 2022.03.01 05:03:34
    Script Purpose : Governs the behavior of Rognog the Angler(x4) in Cove of Decay: Epic Angler.
    Script Notes   : Spell IDs still need to be collected.
--]]


function spawn(NPC)
end

function aggro(NPC, Spawn)
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