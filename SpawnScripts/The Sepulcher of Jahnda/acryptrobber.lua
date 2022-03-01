--[[
    Script Name    : SpawnScripts/The Sepulcher of Jahnda/acryptrobber.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.22 07:10:18
    Script Purpose : 
                   : 
--]]



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function spawn(NPC)
AddSpawnAccess(NPC, NPC)
SetPlayerProximityFunction(NPC, 10, "SpawnAccess", "SpawnAccess")
end

function SpawnAccess(NPC, Spawn)
  if GetTempVariable(Spawn, "MobAccess") == "true" then
   AddSpawnAccess(NPC, Spawn)
   SpawnSet(NPC, "faction", 1)
  else
  RemoveSpawnAccess(NPC, Spawn)
  end
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