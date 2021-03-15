--[[
    Script Name    : SpawnScripts/Commonlands/MnemirsMailbox.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.14 07:03:49
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
    	    StartDialogConversation(conversation, 1, NPC, Spawn, "After collecting the coins scattered about the mailbox it is apparent that Mnemir doesn't seem to think he needs to pay all of his taxes. You should go speak with him about what he owes.")
end
  end  
     end




function respawn(NPC)
	spawn(NPC)
end

