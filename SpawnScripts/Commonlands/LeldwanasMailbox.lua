--[[
    Script Name    : SpawnScripts/Commonlands/LeldwanasMailbox.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.15 09:03:02
    Script Purpose : 
                   : 
--]]


local QUEST = 406 -- Filling the Coffers

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
    	if SpellName == 'Check mailbox' then
    	    if HasQuest(Spawn, QUEST) then
    	    conversation = CreateConversation()
    	    AddConversationOption(conversation, "Leave the mailbox.")
    	    StartDialogConversation(conversation, 1, NPC, Spawn, "Leldwana's box contains numerous letters but no tax money. You will need to speak with her directly.")
end
  end  
     end

function respawn(NPC)
	spawn(NPC)
end

