--[[
	Script Name	: SpawnScripts/Caves/ariverbehemoth.lua
	Script Purpose	: a river behemoth
	Script Author	: Scatman
	Script Date	: 2009.05.18
	Script Notes	: 
--]]

local RIVER_BEHEMOTH_REMAINS_ID = 1970101

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end


function wait(seconds)
  local start = os.time()
  repeat until os.time() > start + seconds
end

function death(NPC, Spawn)
        local Remains
        if HasQuest(Spawn, 494) then
	     Remains = SpawnMob(GetZone(Spawn), RIVER_BEHEMOTH_REMAINS_ID, true, GetX(NPC), GetY(NPC), GetZ(NPC))
             SetTarget(Spawn, Remains)
	end
        
        wait(5)
	Despawn(Remains, 30000)
end