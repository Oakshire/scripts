--[[
    Script Name    : SpawnScripts/thunderdome/Placeholder.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.12 02:07:34
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
      AddTimer(NPC, 5000, "Camp1Despawn", 1, Spawn)
  end
end
end

function Camp1Despawn(NPC)
local zone = GetZone(NPC)
local Camp1Object = GetSpawnByLocationID(zone, 133773730)   
local Object1 = GetSpawnByLocationID(zone, 133773736)
local Object2 = GetSpawnByLocationID(zone, 133773737)
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