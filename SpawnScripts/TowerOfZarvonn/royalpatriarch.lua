--[[
	Script Name	    : SpawnScripts/EchoesOfTimeEpic/KingZalak.lua
	Script Purpose	: Govern behavior and encounter for royal patriarch in Echoes of Time
	Script Author	: Neveruary
	Script Date	    : 08/09/2021
	Script Notes	: Soul Tide isn't listed in db. This mob isn't working yet.
--]]
 
function spawn(NPC)
end
 
function runtozalak(NPC, Spawn)
Shout(NPC, "I hear and I obey great king!")
local zalak = GetSpawn(NPC, 5310002)
local x = GetX(zalak)
local y = GetY(zalak)
local z = GetZ(zalak)
MoveToLocation(NPC, x, y, z, 4)
AddTimer(NPC, 100, "heal")
end
 
function heal(NPC, Spawn)
ModifyHP(zalak, 2000)
AddTimer(NPC, 3000, "explode")
end
 
function explode(NPC, Spawn)
Shout(NPC, "My life is for you King Zalak")
-- CastSpell(NPC, Soul Tide, 1, NPC)
Despawn(NPC)
end
 
function respawn(NPC)
spawn(NPC)
end
 
function hailed(NPC, Spawn)
end
 
function aggro(NPC, Spawn)
end
 
function death(NPC, Spawn)
end