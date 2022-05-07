--[[
    Script Name    : SpawnScripts/MeetingOfTheMinds/PkzwkTzkr.lua
    Script Author  : Neveruary
    Script Date    : 2021.10.05 01:10:57
    Script Purpose : Governs behavior of Pkzwk Tzkr in Meeting of the Minds.
    Boss Mechanics : Spawns with 10 strange guardians linked.
--]]

spells = {40173, 40155, 40183, 40083}

function spawn(NPC)
end
 
function attacked(NPC, Spawn)
    Say(NPC, "Reinforcement forces: notified.")
    AddTimer(NPC, 100, "spellLoop")
end
 

function spellLoop(NPC, Spawn) -- referred from aggro. Loopback function for spellcasts.
    AddTimer(NPC, math.random(1500, 2500), "spellChoice", Spawn) -- add timer to refer to spellchoice.
end

function spellChoice(NPC, Spawn) -- select a spell from table. 
    local hated = GetMostHated(NPC) 
        if hated ~= nil then 
            FaceTarget(NPC, hated) 
            CastSpell(hated, spells[math.random(#spells)], 3, NPC) 
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