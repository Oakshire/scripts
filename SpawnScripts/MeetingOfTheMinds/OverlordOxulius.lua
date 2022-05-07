--[[
    Script Name    : SpawnScripts/MeetingOfTheMinds/OverlordOxulius.lua
    Script Author  : Neveruary
    Script Date    : 2021.10.05 11:10:42
    Script Purpose : Governs behavior of Overlord Oxulius in A Meeting of the Minds.
    Script Notes   : Spell functions de-activated. All spells need implementation. 
    Boss Mechanics : Boss periodically uses custom spells to attack main threat target. If Pkzwk is killed before Oxulius, then adds will spawn and attack the main threat target.
--]]

-- spells = {Glare of Eradication, Gaze of Writhing Agony, Gaze of Oxulius, Gaze of Destruction}

function spawn(NPC)
SetTempVariable(NPC, "addSpawn", "nil")
end

function aggro(NPC, Spawn)
    AddTimer(NPC, 1000, "spellLoop")
    AddTimer(NPC, 1000, "tzkrLoop")
end

function spellLoop(NPC, Spawn) -- Loopback function for spellcasts.
AddTimer(NPC, math.random(1500,2500), "spellChoice")
end

function spellChoice(NPC, Spawn) -- select a spell from table.
    local hated = GetMostHated(NPC) 
        if hated ~= nil then 
            FaceTarget(NPC, hated) 
--            CastSpell(hated, spells[math.random(#spells)], 3, NPC)
        end
    AddTimer(NPC, math.random(1500, 2500), "spellLoop")
end

function tzkrLoop(NPC, Spawn)
    if GetTempVariable(NPC, "addSpawn") == "nil" then 
    AddTimer(NPC, 3000, "tzkrCheck")
    elseif GetTempVariable(NPC, "addSpawn") == "0" then 
end
end

function tzkrCheck(NPC, Spawn)
    tkzr = GetSpawn(NPC, 5560002) 
    AddTimer(NPC, 1500, "tzkrLoop") 
    if GetTempVariable(NPC, "addSpawn") == "nil" then 
            if not IsAlive(tkzr) then 
                SetTempVariable(NPC, "addSpawn", "1") 
                AddTimer(NPC, 1000, "summonAdds") 
            end
    end
end

function summonAdds(NPC, Spawn)
    local zone = GetZone(NPC) -- grab zone
        if GetTempVariable(NPC, "addSpawn") == "1" then 
                    local borxxSpawn = SpawnByLocationID(zone, 133772846)
                    local braxxSpawn = SpawnByLocationID(zone, 302036)
                    local brixxSpawn = SpawnByLocationID(zone, 302037)
        end
    SetTempVariable(NPC, "addSpawn", "0") 
    AddTimer(NPC, 4000, "overlordConvo1") 

end

function overlordConvo1(NPC, Spawn)
    local zone = GetZone(NPC)
    local borxx = GetSpawn(NPC, 5560006)
        if borxx ~= nil then
            Say(NPC, "Borxx, you must aid me now.  Interlopers have threatened my plans, you owe me!")
            AddTimer(borxx, 3000, "borxxConvo1")
        end
end

function overlordConvo2(NPC, Spawn)
    local borxx = GetSpawn(NPC, 5560006)
    AddTimer(borxx, 3000, "borxxConvo2")
    Say(NPC, "I am not to be taken lightly. You don't understand! The plan benefits us all.  You must aid me NOW!")
end

function overlordConvo3(NPC, Spawn)
    local borxx = GetSpawn(NPC, 5560006)
    AddTimer(borxx, 3000, "borxxConvo3")
    Say(NPC, "If they are audacious enough to attack me, then what is to prevent them from treating you the same way?!  You must aid me NOW!")
end

function overlordConvo4(NPC, Spawn)
    local borxx = GetSpawn(NPC, 5560006)
    AddTimer(borxx, 3000, "borxxConvo4")
    Say(NPC, "You know full well I cannot agree to that! Be reasonable, I can make it worth your while! I must have aid NOW!")
end

function overlordConvo5(NPC, Spawn)
    local borxx = GetSpawn(NPC, 5560006)
    AddTimer(borxx, 3000, "borxxConvo5")
    Say(NPC, "Okay! I will meet your demands. Time grows short; I need you now!")
end

function respawn(NPC)
	spawn(NPC)
end