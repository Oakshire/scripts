--[[
    Script Name    : Quests/TheElddarGrove/message_for_zwena.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.09 01:05:03
    Script Purpose : 

        Zone       : TheElddarGrove
        Quest Giver: Initiate Lunaru
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Deliver a message to Zwena in the Elddar Grove. ", 1, "I am to deliver a message to Zwena on the bridge in the Eldarr grove.", 185, 2070031)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "", "", "thank", 0, 0, Player)
	AddConversationOption(conversation, "I'll be sure she receives it.")
	StartConversation(conversation, QuestGiver, Player, "Greatly appreciated!  She'll be singing over by the bridge... no need to return to me, just see that she receives the note.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I delivered a message to Zwena.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've delivered the message to Zwena from Initiate Lunaru.")

	UpdateQuestDescription(Quest, "I've delivered the message from Initiate Lunaru to Zwena.  She seemed quite pleased with the message.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
