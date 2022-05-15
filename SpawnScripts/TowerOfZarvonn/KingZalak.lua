--[[
	Script Name	    : SpawnScripts/EchoesOfTimeEpic/KingZalak.lua
	Script Purpose	: Govern behavior and encounter for King Zalak in Echoes of Time (5310002)
	Script Author	: Neveruary
	Script Date	    : 08/09/2021
	Script Notes	: Need spell ID for Regal Arc. 
	                : This fight operates by summoning adds every so often. They cast spells, and the
	                : patriarchs will heal him and then explode in an aoe.
--]]

--Declare variables for iterative use later. These are all Location IDs.
patriarchlocs = {365525, 365526, 133772501, 133772502, 133772503, 133772504, 133772505, 133772506, 133772507}

function spawn(NPC)
end
 
function aggro(NPC, Spawn) -- on aggro, refer to pat spawn loop. also start timer for spellcasts.
	SetTempVariable(NPC, "first", "1")
	AddTimer(NPC, math.random(21000, 30000), "patriarchLoop")
	AddTimer(NPC, math.random(1000), "spellLoop")
end
 
function patriarchLoop(NPC, Spawn)
    if GetTempVariable(NPC, "first") == "1" then
        AddTimer(NPC, 1000, "patriarchSpawns")
        SetTempVariable(NPC, "first", "0")
        else
    AddTimer(NPC, math.random(21000,30000), "patriarchSpawns")
    end
end
 
function patriarchSpawns(NPC, Spawn) -- spawns patriarchs on a timer. timer starts on aggro.
    Shout(NPC, "Royal Patriarchs come aid your king!")
    AddTimer(NPC, 1000, "patriarchLoop")
    zone = GetZone(NPC)
	    for k,v in pairs(patriarchlocs) do
		    if not IsAlive(GetSpawnByLocationID(zone, v)) then
			    newPat = SpawnByLocationID(zone, v)
			    AddTimer(newPat, 1000, "runtozalak")
			    break
		    end
		
        end
end
 
function respawn(NPC)
spawn(NPC)
end