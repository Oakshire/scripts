--[[
    Script Name    : SpawnScripts/MeetingOfTheMinds/Borxx.lua
    Script Author  : Neveruary
    Script Date    : 2021.10.05 12:10:00
    Script Purpose : Governs the behavior of Borxx in Meeting of the Minds.
    Script Notes   : This script contains behavior for Borxx and Broxx. There are 4 adds on Live. This was likely changed since the last collect. I've merged their behaviors here.
                   : Spell functions de-activated. All spells need implementation. 
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

function borxxConvo1(NPC, Spawn)
    local overlord = GetSpawn(NPC, 5560003)
    FaceTarget(NPC, overlord)
    Say(NPC, "You lack dedication. I owe you nothing.")
    AddTimer(overlord, 3500, "overlordConvo2")
end

function borxxConvo2(NPC, Spawn)
    local overlord = GetSpawn(NPC, 5560003)
    FaceTarget(NPC, overlord)
    Say(NPC, "Your scheming will lead to ruin.  If you wish my aid, you know the price.")
    AddTimer(overlord, 3500, "overlordConvo3")
end

function borxxConvo3(NPC, Spawn)
    local overlord = GetSpawn(NPC, 5560003)
    FaceTarget(NPC, overlord)
    Say(NPC, "If you wish my aid, you know the price.")
    AddTimer(overlord, 3500, "overlordConvo4")
end

function borxxConvo4(NPC, Spawn)
    local overlord = GetSpawn(NPC, 5560003)
    FaceTarget(NPC, overlord)  
    Say(NPC, "If you wish my aid, you know the price.")
    AddTimer(overlord, 3500, "overlordConvo5")
end

function borxxConvo5(NPC, Spawn)
    local overlord = GetSpawn(NPC, 5560003)
    local hated = GetMostHated(overlord)
    local braxx = GetSpawn(NPC, 5560004)
    local brixx = GetSpawn(NPC, 5560005)
    FaceTarget(NPC, overlord)   
    Say(NPC, "So be it.")
    Attack(NPC, hated)
    Attack(braxx, hated)
    Attack(brixx, hated)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end