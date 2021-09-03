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
 

function spellLoop(NPC, Spawn) -- referred from aggro. Loopback function for spellcasts.
    AddTimer(NPC, math.random(1500, 2500), "spellChoice", Spawn) -- add timer to refer to spellchoice.
end

function spellChoice(NPC, Spawn) -- select a spell from table. Zalak is a shadowknight, so only casts on highest hate target.
    local playerList = GetPlayersInZone(GetZone(NPC)) -- get list of players.
        for k,v in pairs(playerList) do
            FaceTarget(NPC, v) -- face the NPC toward threat target if they aren't already.
            CastSpell(PlayerList[math.random(#PlayerList)], spells[math.random(#spells)], 3, NPC) -- get random spell from table, cast on target.
            break
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
 