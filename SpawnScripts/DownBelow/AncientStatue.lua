--[[
    Script Name    : SpawnScripts/DownBelow/AncientStatue.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.08 04:01:07
    Script Purpose : 
                   : 
--]]

local Scepter = 5369 -- An Ancient Scepter

function spawn(NPC)
		SetRequiredQuest(NPC, Scepter, 1, 1)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Replace scepter' then
    SetStepComplete(Spawn, Scepter, 1)
    end
end

function respawn(NPC)
	spawn(NPC)
end