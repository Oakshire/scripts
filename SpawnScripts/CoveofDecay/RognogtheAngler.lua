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
catchIDs = {347235, 347236, 347237, 347238, 347239,
            347240, 347241, 347242, 347423, 347424,
            347425, 347426} -- location IDs of "a catch". Rognog attacks when these are all dead.
crabIDs = {347223, 347225, 347228, 247231}

-- basic inclusions for mob behavior here
function spawn(NPC)
end

function respawn(NPC)
spawn(NPC)
end

function spellChoice(NPC, Spawn) -- select a spell from table.
    local hated = GetMostHated(NPC) 
        if hated ~= nil then 
            FaceTarget(NPC, hated) 
            -- CastSpell(hated, spells[math.random(#spells)], 3, NPC)
        end
    AddTimer(NPC, math.random(1500, 2500), "spellLoop")
end

function spellLoop(NPC, Spawn) -- Loopback function for spellcasts. casts spells on an interval.
    AddTimer(NPC, math.random(1500,2500), "spellChoice")
end

-- encounter-specific stuff here
function fishcheck(NPC, Spawn) -- this function receives its secondary parameter, Spawn, from the death function of "a catch". When isAlive returns false for all fish, the encounter starts.
local zone = GetZone(NPC)
    for k,v in pairs(catchIDs) do
    local fish = GetSpawnByLocationID(zone, v)
        if isAlive(fish) == true then
            break
        else
            SpawnSet(NPC, "attackable", true)
            Attack(NPC, Spawn)
            AddTimer(NPC, 1000, "crabAttack")
            AddTimer(NPC, 1000, "spellLoop")

        end
    end
end

function crabattack(NPC, Spawn) -- crabs attack player who activated encounter when fishcheck returns all false.
        for k,v in pairs(crabIDs) do
        local crab = GetSpawnByLocationID(zone, v)
            Attack(crab, Spawn)
    end
end

function healthchanged(NPC, Spawn) -- at 50%, begin spawning the x4 version of this mob.
    if GetHP(NPC) <= GetMaxHP * 0.5 then
        AddTimer(NPC, 1000, "spawnx4")
    end
end

function spawnx4(NPC, Spawn) -- spawns x4 by location ID. x4 despawns this mob.
    local zone = GetZone(NPC)
    local rognogx4 = SpawnByLocationID(zone, 133772888)
        if rognogx4 ~= nil then
            AddTimer(NPC, 1000, "despawnx2")
        end
end