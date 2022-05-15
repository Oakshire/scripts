--[[
	Script Name	    : SpawnScripts/EchoesOfTimeEpic/KingZalak.lua
	Script Purpose	: Govern behavior and encounter for royal patriarch in Echoes of Time
	Script Author	: Neveruary
	Script Date	    : 08/09/2021
	Script Notes	: 
--]]
 
function spawn(NPC)
end
 
function runtozalak(NPC, Spawn)
    Shout(NPC, "I hear and I obey great king!")
    AddTimer(NPC, 1000, "healCheck")
end

function healCheck(NPC, Spawn)
local zalak = GetSpawn(NPC, 5310002)
        local x = GetX(zalak)
        local y = GetY(zalak)
        local z = GetZ(zalak)
        MoveToLocation(NPC, x, y, z, 4)
        AddTimer(NPC, 1000, "heal")
end
 
function heal(NPC, Spawn)
    local zalak = GetSpawn(NPC, 5310002)
    if GetDistance(NPC, zalak) < 4 then
        ModifyHP(zalak, 2000)
        AddTimer(NPC, 3000, "explode")
    else
        AddTimer(NPC, 1000, "healCheck")
    end
    
end
 
function explode(NPC, Spawn)
    Shout(NPC, "My life is for you, King Zalak!")
    CastSpell(NPC, 5474, 1, NPC)
end
 
function respawn(NPC)
spawn(NPC)
end