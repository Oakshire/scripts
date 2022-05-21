--[[
    Script Name    : SpawnScripts/Oakmyst.RotweedThistle.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.20 04:05:04
    Script Purpose : 
                   : 
--]]

function death(NPC, Spawn)
  local zone = GetZone(NPC)
  local thistle1 = GetSpawnByLocationID(zone, 422456)
  local thistle2 = GetSpawnByLocationID(zone, 422457)
  local thistle3 = GetSpawnByLocationID(zone, 422458)
  if IsAlive(thistle1) == true then
    elseif IsAlive(thistle2) == true then
    elseif IsAlive(thistle3) == true then
    else
      AddTimer(NPC, 1000, "rotweedSpawn", 1, Spawn)
  end
end

function rotweedSpawn(NPC, Spawn)
  local zone = GetZone(NPC)
  local thistle1 = GetSpawnByLocationID(zone, 422456)
  local x, y, z = GetX(thistle1),GetY(thistle1),GetZ(thistle1)
  local rotweed = SpawnMob(zone, 1950029, true, x, y, z)
  if rotweed ~= nil then
      FaceTarget(rotweed, Spawn)
      Attack(rotweed, Spawn)
  end
end