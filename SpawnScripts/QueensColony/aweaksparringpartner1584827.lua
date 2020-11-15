--[[
    Script Name    : SpawnScripts/QueensColony/aweaksparringpartner1584827.lua
    Script Author  : Rylec
    Script Date    : 2020.11.14 12:11:50
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
        DeadWeakSparringPartnerSpawn(NPC)
end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function DeadWeakSparringPartnerSpawn(NPC)
        local zone = GetZone(NPC)
        local deadWeakSparringPartner = GetSpawnByLocationID(zone, 1584827)
--        if deadWeakSparringPartner == nil then
--            SpawnByLocationID(zone, 1584827)
--        end
end


function death(NPC, Spawn)
        SetInCombat(NPC, false)
--        AddTimer(NPC, 10000, "DespawnDeadDeer")        
end

--[[
function DespawnDeadDeer(NPC)
        local zone = GetZone(NPC)
        local deadDeer = GetSpawnByLocationID(zone, 1587625)
        if deadDeer ~= nil then
            Despawn(deadDeer)
        end
end
--]]
