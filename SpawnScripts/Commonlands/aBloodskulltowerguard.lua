--[[
    Script Name    : SpawnScripts/Commonlands/aBloodskulltowerguard.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.01 06:03:42
    Script Purpose : 
                   : 
--]]

require("SpawnScripts/Generic/BloodskullVoiceOvers")

local BloodskullIntentions = 403

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
spawn(NPC)
end

function aggro(NPC, Spawn)
    	--local chance = MakeRandomInt(0, 100)
	--if chance <= 25 then
generic_aggro(NPC, Spawn)
--end
   end

function healthchanged(NPC, Spawn)
        	local chance = MakeRandomInt(0, 100)
	if chance <= 25 then
generic_healthchanged(NPC, Spawn)
end
   end

function death(NPC, Spawn)
  generic_death(NPC, Spawn)
  if GetQuestStep(Spawn, BloodskullIntentions) == 2 then
  local chance = math.random(1, 100)
  if chance >= 50 then
  local zone = GetZone(Spawn)
  local X = GetX(NPC)
  local Y = GetY(NPC)
  local Z = GetZ(NPC)
   local BloodskullOrders = SpawnMob(zone, 331126, true, X, Y, Z, 33.71)
        if BloodskullOrders ~= nil then
        AddSpawnAccess(BloodskullOrders, Spawn)
        AddTimer(NPC, 300000, "despawn", 1)
 end
end
end
end

function despawn(NPC, Spawn)
  local BloodskullOrders = GetSpawn(NPC, 331126)
  Despawn(BloodskullOrders)
end  

