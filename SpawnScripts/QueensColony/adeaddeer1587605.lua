--[[
    Script Name    : SpawnScripts/QueensColony/adeaddeer1587605.lua
    Script Author  : Rylec
    Script Date    : 2020.05.17 11:05:40
    Script Purpose : Deer despawns when the last of the two Sapswills die             
--]]

function spawn(NPC)
    DeerDespawn(NPC, Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function DeerDespawn(NPC, Spawn)
    Shout(NPC, "Working")
    local zone = GetZone(NPC)
    local newSpawn = GetSpawnByLocationID(zone, 1587596)
    local newSpawn2 = GetSpawnByLocationID(zone, 1587597)

    if newSpawn ~= nil and newSpawn2 ~= nil then  
--    if not IsAlive(newSpawn) and not IsAlive(newSpawn2) then
    Despawn(NPC)
    end
end