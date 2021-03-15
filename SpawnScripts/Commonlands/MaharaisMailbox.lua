--[[
    Script Name    : SpawnScripts/Commonlands/MaharaisMailbox.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.15 09:03:04
    Script Purpose : 
                   : 
--]]

local QUEST = 406 -- Filling the Coffers

function spawn(NPC)

end


function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
    	if SpellName == 'Check mailbox' then
    	    if HasQuest(Spawn, QUEST) then
    	       if GetQuestStep(Spawn, QUEST) == 5 then
    	       SetStepComplete(Spawn, QUEST, 5)
    	       end
    	    conversation = CreateConversation()
    	    AddConversationOption(conversation, "Leave the mailbox.")
    	    StartDialogConversation(conversation, 1, NPC, Spawn, "You easily collect Maharai's taxes from her mailbox.")
end
  end  
     end