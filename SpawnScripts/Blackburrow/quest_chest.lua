--[[
    Script Name    : SpawnScripts/Blackburrow/quest_chest.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.29 08:07:45
    Script Purpose : 
                   : 
--]]

local aGrubbyBoneKey = 5710

function spawn(NPC)
SetRequiredQuest(NPC, aGrubbyBoneKey, 1)
end

function casted_on(NPC, Spawn, Spell)
if Spell == 'use your key' then
SetStepComplete(Spawn, aGrubbyBoneKey, 1)
  end
end    

function respawn(NPC)
	spawn(NPC)
end