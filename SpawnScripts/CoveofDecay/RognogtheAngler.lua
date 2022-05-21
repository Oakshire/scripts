--[[
    Script Name    : SpawnScripts/CoveofDecay/RognogtheAngler.lua
    Script Author  : Neveruary
    Script Date    : 2022.03.01 05:03:34
    Script Purpose : Governs the behavior of Rognog the Angler(x2) in Cove of Decay: Epic Angler.
    Script Notes   : Spell IDs still need to be collected. Rognog starts on spawn as not attackable.
                   : After all "a catch" mobs are dead, he attacks the player who killed his last fish.
                   : The crabs in the zone also attack the player.
--]]

spells = {1, 2, 3, 4, 5} -- need to get spell IDs/names

-- basic inclusions for mob behavior here
function spawn(NPC)
    SpawnSet(NPC, "attackable", "0")
end

function respawn(NPC)
spawn(NPC)
end

function healthchanged(NPC, Spawn) -- at 50%, begin spawning the x4 version of this mob.
    if GetHP(NPC) <= GetMaxHP(NPC) * 0.5 then
        SpawnSet(NPC, "attackable", "0")
        ClearHate(NPC)
        AddTimer(NPC, 500, "spawnx4", 1, Spawn)
    end
end

function spawnx4(NPC, Spawn) -- spawns x4 by location ID. x4 despawns this mob.
    local zone = GetZone(NPC)
    local rognogx4 = SpawnByLocationID(zone, 133772888)
        if rognogx4 ~= nil then
            AddTimer(rognogx4, 500, "despawnx2")
            Attack(rognogx4, Spawn)
        end
end