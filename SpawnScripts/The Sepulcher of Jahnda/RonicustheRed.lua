--[[
    Script Name    : SpawnScripts/The Sepulcher of Jahnda/RonicustheRed.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.22 07:10:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddSpawnAccess(NPC, NPC)
SetPlayerProximityFunction(NPC, 10, "SpawnAccess", "SpawnAccess")
end

function SpawnAccess(NPC, Spawn)
  if GetTempVariable(Spawn, "MobAccess") == "true" then
         SpawnSet(NPC, "faction", 1)
   AddSpawnAccess(NPC, Spawn)
  else
  RemoveSpawnAccess(NPC, Spawn)
  end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function death(NPC, Spawn)
local group = GetSpawnByGroupID(zone, 1049684)
if not IsAlive(group) then
local zone = GetZone(NPC)
local LordTonmerk = SpawnByLocationID(zone, LordTonmerkID)
end
   end

function respawn(NPC)
	spawn(NPC)
end