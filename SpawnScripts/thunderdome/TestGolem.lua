--[[
    Script Name    : SpawnScripts/thunderdome/TestGolem.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.12 01:07:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function death(NPC, Spawn)
  local zone = GetZone(NPC)
  local Spawn1 = GetSpawnByLocationID(zone, 133773738)
  local Spawn2 = GetSpawnByLocationID(zone, 133773739)
  local Spawn3 = GetSpawnByLocationID(zone, 133773740)
  local Spawn4 = GetSpawnByLocationID(zone, 133773741)
 if IsAlive(Spawn1) == true then
    elseif IsAlive(Spawn2) == true then
    elseif IsAlive(Spawn3) == true then
    elseif IsAlive(Spawn4) == true then
    else
      AddTimer(NPC, 3000, "Camp1BossSpawn", 1, Spawn)
  end
end

function Camp1BossSpawn(NPC, Spawn)
  local zone = GetZone(NPC)
  local Spawn1 = GetSpawnByLocationID(zone, 133773738)
    if GetSpawnByLocationID(zone, 133773735) == nil then
    local Camp1Boss=SpawnByLocationID(zone, 133773735)
    FaceTarget(Camp1Boss, Spawn)
    Attack(Camp1Boss, Spawn)
    end
    if GetSpawnByLocationID(zone, 133773747) == nil then
    local BossAdd1=SpawnByLocationID(zone, 133773747)
     FaceTarget(BossAdd1, Spawn)
    Attack(BossAdd1, Spawn)
    end
    if GetSpawnByLocationID(zone, 133773748) == nil then
    local BossAdd2=SpawnByLocationID(zone, 133773748)
    FaceTarget(BossAdd2, Spawn)
    Attack(BossAdd2, Spawn)
    end

end

function respawn(NPC)
	spawn(NPC)
end