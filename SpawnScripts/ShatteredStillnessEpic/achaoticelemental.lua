--[[
    Script Name    : SpawnScripts/ShatteredStillnessEpic/achaoticelemental.lua
    Script Author  : Neveruary
    Script Date    : 2021.10.04 01:10:11
    Script Purpose : 
                   : 
--]]

spells = {Swirling Cloud of Blood, Ruin, Stunning Shards}

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
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end