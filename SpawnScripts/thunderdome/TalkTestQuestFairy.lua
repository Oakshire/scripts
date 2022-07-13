--[[
    Script Name    : SpawnScripts/thunderdome/TalkTestQuestFairy.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.12 02:07:10
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function death(NPC, Spawn)
if GetSpawnLocationID(NPC)==  133773735 then  
  local zone = GetZone(NPC)
  local Camp1Boss = GetSpawnByLocationID(zone, 133773735)
  if IsAlive(Camp1Boss) == true then
    else
if GetSpawnByLocationID(zone, 133773749)~=nil then
 local Merchant = GetSpawnByLocationID(zone, 133773749)
 Despawn(Merchant)
 local HappyMerchant = SpawnByLocationID(zone,133773750)
end  
      AddTimer(NPC, 9000, "Camp1Despawn", 1, Spawn)
  end
end
end

function Camp1Despawn(NPC)
local zone = GetZone(NPC)
local Camp1Object = GetSpawnByLocationID(zone, 133773730)   
local Object1 = GetSpawnByLocationID(zone, 133773736)
local Object2 = GetSpawnByLocationID(zone, 133773737)
local HappyMerchant = GetSpawnByLocationID(zone,133773750)
if HappyMerchant~= nil then
Despawn(HappyMerchant)
end
if Camp1Object~= nil then
Despawn(Camp1Object)
end
if Object1~= nil then
Despawn(Object1)
end
if Object2~= nil then
Despawn(Object2)
end
end

function respawn(NPC)
	spawn(NPC)
end