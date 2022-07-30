--[[
    Script Name    : SpawnScripts/Blackburrow/questkeyedcheststeel.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.29 09:07:41
    Script Purpose : 
                   : 
--]]

local Polishedsteelkey = 5708 -- quest ID


function spawn(NPC)
SetRequiredQuest(NPC, Polishedsteelkey, 1)
end

function casted_on(NPC, Spawn, Spell)
if Spell == 'use your key' then
SetStepComplete(Spawn, Polishedsteelkey, 1)
  end
end  




function respawn(NPC)
	spawn(NPC)
end