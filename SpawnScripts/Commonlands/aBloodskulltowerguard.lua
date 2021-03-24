--[[
    Script Name    : SpawnScripts/Commonlands/aBloodskulltowerguard.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.01 06:03:42
    Script Purpose : 
                   : 
--]]

local BloodskullIntentions = 403

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end


function death(NPC, Spawn)
  if GetQuestStep(Spawn, BloodskullIntentions) == 2 then
  local chance = math.random(100)
  if chance >= 50 then
  local zone = GetZone(Spawn)
  local X = GetX(NPC)
  local Y = GetY(NPC)
  local Z = GetZ(NPC)
   local BloodskullOrders = SpawnMob(zone, 331126, true, X, Y, Z, 33.71)
        if BloodskullOrders ~= nil then
        AddSpawnAccess(BloodskullOrders, Spawn)
 end
end
end
end