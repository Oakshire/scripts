--[[
    Script Name    : SpawnScripts/ShatteredStillness/ArchLichUdalan.lua
    Script Author  : Neveruary
    Script Date    : 2021.10.04 01:10:53
    Script Purpose : 
                   : 
--]]

spells = {Withering Soulscream, Dissolve, Absolution, Cataclysm, Suffocating Cloud}
eleIDs = {1, 2, 3, 4, 5}

function spawn(NPC)
end

function aggro(NPC, Spawn)
    AddTimer(NPC, math.random(1500,2500), "spellLoop")
    AddTimer(NPC, math.random(1500,2500), "eleLoop")
end

function spellLoop(NPC, Spawn) -- Loopback function for spellcasts.
    AddTimer(NPC, math.random(1500,2500), "spellChoice")
end

function eleLoop(NPC, Spawn)
    Shout(NPC, "eleLoop firing.")
    AddTimer(NPC, math.random(21000,30000), "eleSpawns")
end
 
function eleSpawns(NPC, Spawn) -- spawns patriarchs on a timer. timer starts on aggro.
    Shout(NPC, "eleSpawns firing.")
    AddTimer(NPC, 1000, "eleLoop")
    zone = GetZone(NPC)
	    for k,v in pairs(patriarchlocs) do -- grab patriarch location IDs.
		    if not IsAlive(GetSpawnByLocationID(zone, v)) then
			    newEle = SpawnByLocationID(zone, v)
			    AddTimer(newEle, 1000, "spellLoop")
			    break
		    end
		
        end
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