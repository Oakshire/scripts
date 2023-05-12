--[[
    Script Name    : Quests/Antonica/a_brass_key.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.11 11:05:34
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStep(Quest, 1, "From the looks of the key and the tag, it would be safe to assume that this key can be used at a lighthouse of sorts.", 1, 100, "I need to find out what lighthouse this key goes to. The trek maybe dangerous, so I should take other hearty adventurers with me.  From the looks of the key and the tag, it would be safe to assume that this key can be used at a lighthouse of sorts.", 2176)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I must find the location for this key!")
    StartDialogConversation(conversation, 1, QuestGiver, Player, "I need to find out what lighthouse this key goes to. The trek maybe dangerous, so I should take other hearty adventurers with me.  From the looks of the key and the tag, it would be safe to assume that this key can be used at a lighthouse of sorts.")
    SendMessage(Player,"You slip the key into your questing satchle for later.")
    if HasItem(Player, 1271) then
        RemoveItem(Player,1271,1)
    end
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "The key fit into a lock to the cellar behind the lighthouse.")
	UpdateQuestTaskGroupDescription(Quest, 1, "The key fit into the lock of the lighthouse cellar, I used it and entered.")

	UpdateQuestDescription(Quest, "I used the key to open the cellar behind the lighthouse in Antonica and enter it.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
