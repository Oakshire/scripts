--[[
    Script Name    : SpawnScripts/ShatteredStillness/ArchLichUdalan.lua
    Script Author  : Neveruary
    Script Date    : 2021.10.04 01:10:53
    Script Purpose : Governs behavior of Arch Lich Udalan in Shattered Stillness: Epic.
    Script Notes   : Withering Soulscream, Suffocating Cloud, and chaotic elemental summoning spell need implementation.
    Boss Mechanics : Every minute, Udalan summons a chaotic elemental. This channeling can be interrupted by stunning him. The elemental has a few spells
                   : the most dangerous of which is stunning shards. 
--]]

spells = {240107, 240003, 240049} -- Withering Soulscream, Suffocating Cloud

function spawn(NPC)
end

function aggro(NPC, Spawn)
    AddTimer(NPC, math.random(1500,2500), "spellLoop")
    AddTimer(NPC, 1000, "eleLoop")
end

function spellLoop(NPC, Spawn) -- Loopback function for spellcasts.
    AddTimer(NPC, 3000, "spellChoice")
end

function eleLoop(NPC, Spawn)
    Shout(NPC, "eleLoop firing.")
    AddTimer(NPC, 57000, "eleSpawns")
end
 
function eleSpawns(NPC, Spawn) -- spawns elementals on a timer. timer starts on aggro.
    AddTimer(NPC, 1000, "eleLoop")
-- CastSpell(NPC, summon chaotic elemental, 3, NPC)
end
    
function spellChoice(NPC, Spawn) -- select a spell from table.
    local hated = GetMostHated(NPC) 
        if hated ~= nil then 
            FaceTarget(NPC, hated) 
            CastSpell(hated, spells[math.random(#spells)], 3, NPC)
        end
    AddTimer(NPC, math.random(1500, 2500), "spellLoop")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end