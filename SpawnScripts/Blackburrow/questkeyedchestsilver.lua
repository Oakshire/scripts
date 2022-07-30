--[[
    Script Name    : SpawnScripts/Blackburrow/questkeyedchestsilver.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.30 10:07:24
    Script Purpose : 
                   : 
--]]

local aTarnishedSilverKey = 5709 -- quest ID


function spawn(NPC)
SetRequiredQuest(NPC,  aTarnishedSilverKey, 1)
end

function casted_on(NPC, Spawn, Spell)
if Spell == 'use brass key' then
SetStepComplete(Spawn,  aTarnishedSilverKey, 1)
  end
end  




function respawn(NPC)
	spawn(NPC)
end