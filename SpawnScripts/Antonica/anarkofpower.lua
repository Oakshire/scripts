--[[
    Script Name    : SpawnScripts/Antonica/anarkofpower.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.15 04:07:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC,6000,"DespawnArk")
end

function casted_on(NPC, Spawn, SpellName)
local Ark = GetSpawnLocationID(NPC)
  if SpellName == 'use' then
DespawnArk(NPC)
end
end

function DespawnArk(NPC)
--local Ark = GetSpawnLocationID(NPC)
--if Ark ~=nil then
Despawn(Ark)
--end
end

function respawn(NPC)
	spawn(NPC)
end