--[[
    Script Name    : SpawnScripts/Commonlands/KadeksMailbox.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.14 06:03:02
    Script Purpose : 
                   : 
--]]

local QUEST = 406 -- Filling the Coffers

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
    	if SpellName == 'Check mailbox' then
    	    if HasQuest(Spawn, QUEST) then
    	       if GetQuestStep(Spawn, QUEST) == 2 then
    	       SetStepComplete(Spawn, QUEST, 2)
    	       end
    	    conversation = CreateConversation()
    	    AddConversationOption(conversation, "Leave the mailbox.")
    	    StartDialogConversation(conversation, 1, NPC, Spawn, "Kadek's taxes are strewn messily about at the bottom of the mailbox. Collecting them isn't too hard, however, and he paid all that he was supposed to.")
end
  end  
     end

function respawn(NPC)
	spawn(NPC)
end

