--[[
    Script Name    : SpawnScripts/CoveofDecay/RognogtheAngler.lua
    Script Author  : Neveruary
    Script Date    : 2022.03.01 05:03:34
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 500, "access")
end

function access(NPC)
    local zone = GetZone(NPC)
    local players = GetPlayersInZone(zone)
    local rognog = GetSpawn(NPC, 3110009)
    for k,v in pairs(players) do
        Say(NPC, tostring(rognog))
        Say(NPC, tostring(player))
        RemoveSpawnAccess(rognog, v)
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end