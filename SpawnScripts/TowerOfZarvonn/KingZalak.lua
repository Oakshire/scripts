--[[
	Script Name	    : SpawnScripts/EchoesOfTimeEpic/KingZalak.lua
	Script Purpose	: Govern behavior and encounter for King Zalak in Echoes of Time (5310002)
	Script Author	: Neveruary
	Script Date	    : 08/09/2021
	Script Notes	: Need spell ID for Regal Arc.
--]]

--Declare variables for iterative use later. These are all Location IDs.
patriarchlocs = {365525, 365526, 133772501, 133772502, 133772503, 133772504, 133772505, 133772506, 133772507}
addsNoPats = {365522, 365524, 365519, 365520}
spells = {90047, 90128, 90168, 90088, 90106} -- Regal Arc}}
 
function spawn(NPC) -- get zone, then spawn other mobs if they aren't alive. function also currently causes each mob to yell. to be removed.
end
 
function aggro(NPC, Spawn) -- on aggro, refer to pat spawn loop. also start timer for spellcasts.
	AddTimer(NPC, math.random(21000, 30000), "patriarchLoop") -- set timer to proceed with add phase
	AddTimer(NPC, math.random(1000), "spellLoop")
end
 

function spellLoop(NPC, Spawn) -- referred from aggro. Loopback function for spellcasts.
    AddTimer(NPC, math.random(1500,2500), "spellChoice") -- add timer to refer to spellchoice.
end

 
function patriarchLoop(NPC, Spawn) -- triggers heal by checking distance. they only heal him while they're within range.
    AddTimer(NPC, math.random(21000,30000), "patriarchSpawns") -- loopback call, also on a timer.
end
 
function patriarchSpawns(NPC, Spawn) -- spawns patriarchs on a timer. timer starts on aggro.
    Shout(NPC, "Royal Patriarchs come aid your king!")
    AddTimer(NPC, 1000, "patriarchLoop")
    zone = GetZone(NPC)
	    for k,v in pairs(patriarchlocs) do -- grab patriarch location IDs.
		    if not IsAlive(GetSpawnByLocationID(zone, v)) then -- if the patriarchs are dead or aren't on the map, proceed
			    newPat = SpawnByLocationID(zone, v) -- spawn mob
			    AddTimer(newPat, 1000, "runtozalak") -- sends timer to run to Zalak
			    break
		    end
		
        end
end
 

function spellChoice(NPC, Spawn) -- select a spell from table. Zalak is a shadowknight, so only casts on highest hate target.
    Shout(NPC, "spellChoice firing.")
    local hated = GetMostHated(NPC) -- get pointer for whoever has threat.
        if hated ~= nil then -- if pointer isn't blank, proceed.
            FaceTarget(NPC, hated) -- face the NPC toward threat target if they aren't already.
            CastSpell(hated, spells[math.random(#spells)], 3, NPC) -- get random spell from table, cast on target.
        end
    AddTimer(NPC, math.random(1500, 2500), "spellLoop") -- refer to loopback
end

 
function respawn(NPC)
spawn(NPC)
end