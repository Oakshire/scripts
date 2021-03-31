--[[
    Script Name    : SpawnScripts/Commonlands/asmugglingcrate.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.31 09:03:51
    Script Purpose : 
                   : 
--]]

local QUEST = 453 -- Crates on the Nerves Quest

function spawn(NPC)

end


function casted_on(NPC, Spawn, SpellName)
        	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 10  then
    	if SpellName == 'Investigate Crate' then
    	     SetStepComplete(Spawn, QUEST, 10)
end    	    
   end
       end



function respawn(NPC)
	spawn(NPC)
end