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

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end