--[[
	Script Name	    : SpawnScripts/TowerOfZarvonn/royalacolyte.lua
	Script Purpose	: Govern behavior and encounter for royal acolyte in Echoes of Time
	Script Author	: Neveruary
	Script Date	    : 08/09/2021
	Script Notes	: 
--]]
 
spells = {130011, 130030, 130184, 130119}
 
function spawn(NPC)
end
 
function aggro(NPC, Spawn)
    AddTimer(NPC, 10000, "spellChoice", Spawn)
end
 

function spellLoop(NPC, Spawn) -- referred from aggro. Loopback function for spellcasts.
    AddTimer(NPC, math.random(1500, 2500), "spellChoice", Spawn) -- add timer to refer to spellchoice.
end

function spellChoice(NPC, Spawn) -- select a spell from table. Zalak is a shadowknight, so only casts on highest hate target.
    local hated = GetMostHated(NPC) -- get pointer for whoever has threat.
        if hated ~= nil then -- if pointer isn't blank, proceed.
            FaceTarget(NPC, hated) -- face the NPC toward threat target if they aren't already.
            CastSpell(hated, spells[math.random(#spells)], 3, NPC) -- get random spell from table, cast on target.
        end
    AddTimer(NPC, math.random(1500, 2500), "spellLoop") -- refer to loopback
end