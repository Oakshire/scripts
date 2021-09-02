--[[
	Script Name	    : SpawnScripts/EchoesOfTimeEpic/KingZalak.lua
	Script Purpose	: Govern behavior and encounter for King Zalak in Echoes of Time (5310002)
	Script Author	: Neveruary
	Script Date	    : 08/09/2021
	Script Notes	: Need spell ID for Regal Arc.
--]]
 
--Declare variables for iterative use later. These are all Location IDs.
adds = {365522, 365524, 365519, 365520, 365525, 365526}
patriarchlocs = {365525, 365526, 133772501, 133772502, 133772503, 133772504, 133772505, 133772506, 133772507}
addsNoPats = {365522, 365524, 365519, 365520}
spells = {90047, 90128, 90168, 90088, 90106} -- Regal Arc}}
 
function spawn(NPC) -- get zone, then spawn other mobs if they aren't alive. function also currently causes each mob to yell. to be removed.
	zone = GetZone(NPC) -- define zone by pulling directly from NPC
		for k,v in pairs(addsNoPats) do -- iterate over all adds except pats
			if IsAlive(GetSpawnByLocationID(zone, v)) = false or GetSpawnByLocationID(zone, v) = nil then -- check that a given add isn't alive or on the map.
				SpawnByLocationID(zone, v) -- spawn add if not alive or on map
				spawnTest = GetSpawnByLocationID(zone, v) -- define variable to keep actual call short enough to read
				Shout(spawnTest, "Add spawned successfully.") -- mob shouts to let us know that we reached this point in the script
					else
						Shout(spawnTest, "Add already spawned.")
			end
		end
end
 
function aggro(NPC, Spawn) -- on aggro, refer to pat spawn loop. also start timer for spellcasts.
	AddTimer(NPC, math.random(20000,30000), "patriarchLoop") -- set timer to proceed with add phase
	AddTimer(NPC, 1000, "spellLoop")
end
 

function spellLoop(NPC, Spawn) -- referred from aggro. Loopback function for spellcasts.
AddTimer(NPC, math.random(1500, 2500), "spellChoice") -- add timer to refer to spellchoice.
end

 
function patriarchLoop(NPC, Spawn) -- triggers heal by checking distance. they only heal him while they're within range.
AddTimer(NPC, math.random(20000,30000), "patriarchSpawns") -- loopback call, also on a timer.
end
 
function patriarchSpawns(NPC, Spawn) -- spawns patriarchs on a timer. timer starts on aggro.
Shout(NPC, "Royal Patriarchs come aid your king!")
	for k,v in pairs(patriarchlocs) do -- grab patriarch location IDs.
		if IsAlive(GetSpawnByLocationID(zone, v)) = false or GetSpawnByLocationID(zone, v) = nil then -- if the patriarchs are dead or aren't on the map, proceed
			SpawnByLocationID(zone, v) -- spawn mob
			AddTimer(GetSpawnByLocationID(zone, v), 1000, "runtozalak") -- sends timer to run to Zalak
		end
	end
end
 

function spellChoice(NPC, Spawn) -- select a spell from table. Zalak is a shadowknight, so only casts on highest hate target.
hated = GetMostHated(NPC) -- get pointer for whoever has threat.
if hated ~= nil then -- if pointer isn't blank, proceed.
FaceTarget(NPC, hated) -- face the NPC toward threat target if they aren't already.
CastSpell(hated, spells[math.random(#spells)], 3, NPC) -- get random spell from table, cast on target.
end
AddTimer(NPC, math.random(1500, 2500), "spellLoop") -- refer to loopback
end

 
function respawn(NPC)
spawn(NPC)
end