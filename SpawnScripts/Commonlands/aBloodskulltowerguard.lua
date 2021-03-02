--[[
    Script Name    : SpawnScripts/Commonlands/aBloodskulltowerguard.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.01 06:03:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end


function death(NPC, Spawn)
  local chance = math.random(100)
  if chance >= 50 then
  local zone = GetZone(Spawn)
  local X = GetX(Spawn)
  local Y = GetY(Spawn)
  local Z = GetZ(Spawn)
   local BloodskullOrders = SpawnMob(zone, 331126, true, X, Y, Z, 33.71)
     if new_spawn ~= nil then
        AddSpawnAccess(new_spawn, Spawn)
 end
end
end