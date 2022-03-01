--[[
	Script Name	    : SpawnScripts/EchoesOfTimeEpic/royalastrologer.lua
	Script Purpose	: Govern behavior and encounter for royal astrologer in Echoes of Time
	Script Author	: Neveruary
	Script Date	    : 08/09/2021
	Script Notes	: Need SpellID for Frost Shield spell.
--]]
 
spells = {230163, 8187, 230115} -- Frost Shield?}
 
function spawn(NPC)
end
 
function attacked(NPC, Spawn)
    AddTimer(NPC, 100, "spellLoop")
end

function spellLoop(NPC, Spawn) -- Loopback function for spellcasts.
    AddTimer(NPC, math.random(1500, 2500), "spellChoice", Spawn)
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
 
function death(NPC, Spawn)
end
 
function respawn(NPC)
spawn(NPC)
end
 