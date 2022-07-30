--[[
    Script Name    : SpawnScripts/Blackburrow/questkeyedchestbronze.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.29 09:07:41
    Script Purpose : 
                   : 
--]]

local AFilthybronzekey = 5707 -- quest ID


function spawn(NPC)
SetRequiredQuest(NPC, AFilthybronzekey, 1)
end

function casted_on(NPC, Spawn, Spell)
if Spell == 'use your key' then
SetStepComplete(Spawn, AFilthybronzekey, 1)
  end
end  




function respawn(NPC)
	spawn(NPC)
end