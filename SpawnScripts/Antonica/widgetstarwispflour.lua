--[[
    Script Name    : SpawnScripts/Antonica/widgetstarwispflour.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.15 05:05:40
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
	SetRequiredQuest(NPC, 5830, 1)
end

function casted_on(NPC, Spawn,SpellName)
 if SpellName == 'Grab Flour' and GetQuestStep( Spawn, 5830)==1 then
     SendMessage(Spawn,"You grab a couple handfuls of milled flour.")
         SetStepComplete(Spawn,5830,1)
  end  
end     

function respawn(NPC)
	spawn(NPC)
end