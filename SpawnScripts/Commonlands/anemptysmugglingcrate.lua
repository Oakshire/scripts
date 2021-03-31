--[[
    Script Name    : SpawnScripts/Commonlands/anemptysmugglingcrate.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.29 09:03:46
    Script Purpose : 
                   : 
--]]


local QUEST = 453 -- Crates on the Nerves Quest

function spawn(NPC)

end


function casted_on(NPC, Spawn, SpellName)
        	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 3  then
    	if SpellName == 'Sprinkle Tracking Powder' then
    	     ApplySpellVisual(Spawn, 568)
    	     SpawnSet(NPC, "visual_state", 17432)
    	     AddTimer(NPC, 10000, "return_state", 1, Spawn)
    	     AddStepProgress(Spawn, QUEST, 3, 1)
end    	    
   end
   end
   
   
function return_state(NPC, Spawn)
SpawnSet(NPC, "visual_state", 0)
end
  
  
function respawn(NPC)
	spawn(NPC)
end