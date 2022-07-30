--[[
    Script Name    : SpawnScripts/Blackburrow/anorcishkey.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.30 10:07:58
    Script Purpose : 
                   : 
--]]

local OrcishManacles = 5698

function spawn(NPC)
SetRequiredQuest(NPC, OrcishManacles, 1)
end

function casted_on(NPC, Spawn, Spell)
if Spell == 'Open Chest' then
SetStepComplete(Spawn, OrcishManacles, 1)
  end
end    

function respawn(NPC)
	spawn(NPC)
end