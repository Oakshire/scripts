--[[
    Script Name    : SpawnScripts/Commonlands/ZaikiksMailbox.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.14 06:03:46
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
    	       if GetQuestStep(Spawn, QUEST) == 1 then
    	       SetStepComplete(Spawn, QUEST, 1)
    	       end
    	    conversation = CreateConversation()
    	    AddConversationOption(conversation, "Leave the mailbox.")
    	    StartDialogConversation(conversation, 1, NPC, Spawn, "Zaikik's taxes are placed neatly in a small pouch within the mailbox. You scoop them up and add them to your collection.")
end
  end  
     end