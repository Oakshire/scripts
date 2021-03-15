--[[
    Script Name    : SpawnScripts/Commonlands/EntuisMailbox.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.15 09:03:04
    Script Purpose : 
                   : 
--]]

local QUEST = 406 -- Filling the Coffers

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
    	if SpellName == 'Check mailbox' then
    	    if HasQuest(Spawn, QUEST) then
    	       if GetQuestStep(Spawn, QUEST) == 7 then
    	       SetStepComplete(Spawn, QUEST, 7)
    	       end
    	    conversation = CreateConversation()
    	    AddConversationOption(conversation, "Leave the mailbox.")
    	    StartDialogConversation(conversation, 1, NPC, Spawn, "Entui's taxes rest within a pouch in the mailbox. You collect them with ease.")
end
  end  
     end

function respawn(NPC)
	spawn(NPC)
end

