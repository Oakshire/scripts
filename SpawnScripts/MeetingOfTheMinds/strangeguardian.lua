--[[
    Script Name    : SpawnScripts/MeetingOfTheMinds/strangeguardian.lua
    Script Author  : Neveruary
    Script Date    : 2021.10.05 01:10:31
    Script Purpose : Governs behavior for a strange guardian in Meeting of the Minds.
                   : 
--]]

spells = {30159, 30011, 30121, 30153}

function spawn(NPC)
end
 
function attacked(NPC, Spawn)
    AddTimer(NPC, 100, "spellLoop")
end
 

function spellLoop(NPC, Spawn) -- referred from aggro. Loopback function for spellcasts.
    AddTimer(NPC, math.random(1500, 2500), "spellChoice", Spawn) -- add timer to refer to spellchoice.
end

function spellChoice(NPC, Spawn) -- select a spell from table. Zalak is a shadowknight, so only casts on highest hate target.
    local hated = GetMostHated(NPC) -- get pointer for whoever has threat.
        if hated ~= nil then -- if pointer isn't blank, proceed.
            FaceTarget(NPC, hated) -- face the NPC toward threat target if they aren't already.
            -- CastSpell(hated, spells[math.random(#spells)], 3, NPC) -- get random spell from table, cast on target.
        end
    AddTimer(NPC, math.random(1500, 2500), "spellLoop") -- refer to loopback
end

function hailed(NPC, Spawn)
end

function death(NPC, Spawn)
end
 
function respawn(NPC)
spawn(NPC)
end