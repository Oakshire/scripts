--[[
    Script Name    : SpawnScripts/ShatteredStillnessEpic/achaoticelemental.lua
    Script Author  : Neveruary
    Script Date    : 2021.10.04 01:10:11
    Script Purpose : Governs behavior of chaotic elemental adds in Shattered Stillness: Epic.
    Script Notes   : Swirling Cloud of Blood and Stunning Shards need implementation.
--]]

spells = {30159} -- Swirling Cloud of Blood, Stunning Shards}

function spawn(NPC)
    AddTimer(NPC, 1000, "spellLoop")
end

function spellLoop(NPC, Spawn) -- Loopback function for spellcasts.
    AddTimer(NPC, math.random(1500,2500), "spellChoice")
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
end

function respawn(NPC)
	spawn(NPC)
end