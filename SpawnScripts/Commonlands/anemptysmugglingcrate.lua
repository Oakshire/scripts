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

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function casted_on(NPC, Spawn, SpellName)
        	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 3  then
    	if SpellName == 'Sprinkle Tracking Powder' then
    	     AddStepProgress(Spawn, QUEST, 3, 1)
end    	    
   end
       end
  
  
function respawn(NPC)
	spawn(NPC)
end