--[[
    Script Name    : SpawnScripts/ShatteredStillness/MakutoTheLost.lua
    Script Author  : Neveruary
    Script Date    : 2021.10.04 11:10:52
    Script Purpose : Governs the behavior of Shakuto the Lost in Shattered Stillness: Epic
    Script Notes   : Shock of Poison needs implementation.
    Boss Mechanics : Casts custom spells every so often. Linked with Makuto the lost. 
--]]

spells = {240107, 240003, 2000476}  -- Shock of Poison

function spawn(NPC)
end

function aggro(NPC, Spawn)
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