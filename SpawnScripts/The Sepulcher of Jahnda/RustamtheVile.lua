--[[
    Script Name    : SpawnScripts/The Sepulcher of Jahnda/RustamtheVile.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.22 07:10:55
    Script Purpose : 
                   : 
--]]

local LordTonmerkID = 133772252 -- location ID for Lord Tonmerk frinedly NPC




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

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end



function death(NPC, Spawn)
SetTempVariable(Spawn, "MobAccess", nil)
local group = GetSpawnByGroupID(zone, 1049684)
if not IsAlive(group) then
local zone = GetZone(NPC)
local LordTonmerk = SpawnByLocationID(zone, LordTonmerkID)
if GetTempVariable(Spawn, "turn_tonmerk_hostile") == "true" then
SpawnSet(LordTonmerk, "faction", 1)
SpawnSet(LordTonmerk, "show_command_icon", 1)
SpawnSet(LordTonmerk, "attackable", 1)
SpawnSet(LordTonmerk, "show_level", 1)
end 
end
   end

function respawn(NPC)
	spawn(NPC)
end