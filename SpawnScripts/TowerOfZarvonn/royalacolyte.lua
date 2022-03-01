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
    AddTimer(NPC, math.random(1500, 2500), "spellChoice", Spawn)
end

function spellChoice(NPC, Spawn) -- select a spell from table. 
    local hated = GetMostHated(NPC)
        if hated ~= nil then
            FaceTarget(NPC, hated)
            CastSpell(hated, spells[math.random(#spells)], 3, NPC)
        end
    AddTimer(NPC, math.random(1500, 2500), "spellLoop")
end