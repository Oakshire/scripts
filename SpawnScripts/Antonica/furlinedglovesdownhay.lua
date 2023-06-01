--[[
    Script Name    : SpawnScripts/Antonica/furlinedglovesdownhay.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.14 06:05:42
    Script Purpose : Fur Lined Gloves update
                   : 
--]]

function spawn(NPC)
	SetRequiredQuest(NPC, 5815, 3)
end

function casted_on(NPC, Spawn,SpellName)
 if SpellName == 'Search Hay' and GetQuestStep( Spawn, 5815)==3 then
     SendMessage(Spawn,"You find some down griffon feathers within the bound hay!")
         SetStepComplete(Spawn,5815,3)
  end  
end     

function respawn(NPC)
	spawn(NPC)
end