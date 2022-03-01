--[[
    Script Name    : SpawnScripts/ShatteredVale3/aPortalAbomination.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.23 07:08:59
    Script Purpose : 
                   : 
--]]



local WindstalkerGrizzlyID = 361978 

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function death(NPC, Spawn)
local zone = GetZone(NPC)
local WindstalkerGrizzly = GetSpawnByLocationID(zone, WindstalkerGrizzlyID)
AddTimer(WindstalkerGrizzly, 500, "Start_Bear_Timer", 1, Spawn)
end



function respawn(NPC)
	spawn(NPC)
end