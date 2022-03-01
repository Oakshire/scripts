--[[
    Script Name    : SpawnScripts/MeetingOfTheMinds/Braxx.lua
    Script Author  : Neveruary
    Script Date    : 2021.10.05 12:10:19
    Script Purpose : Governs the behavior of Braxx in A Meeting of the Minds.
                   : Spell functions de-activated pending proper spell implementation on mobs.
--]]

-- spells = {Gaze, Glare of Eradication, Gaze of Commandment, Gaze of Writhing Agony}

function spawn(NPC)
end

function aggro(NPC, Spawn)
    AddTimer(NPC, math.random(1500,2500), "spellLoop")
end

function spellLoop(NPC, Spawn) -- referred from aggro. Loopback function for spellcasts.
    AddTimer(NPC, math.random(1500,2500), "spellChoice")
end

function spellChoice(NPC, Spawn) -- select a spell from table.
    local hated = GetMostHated(NPC) 
        if hated ~= nil then 
            FaceTarget(NPC, hated) 
            -- CastSpell(hated, spells[math.random(#spells)], 3, NPC)
        end
    AddTimer(NPC, math.random(1500, 2500), "spellLoop") 
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end