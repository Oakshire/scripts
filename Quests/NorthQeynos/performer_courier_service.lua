--[[
    Script Name    : Quests/NorthQeynos/performer_courier_service.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.11 09:05:38
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Dawson Magnificent
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to deliver a message to Innkeeper Galsway.", 1, "I need to inform Galsway that Dawson and his performing troupe will be delayed.", 11, 2210022)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Qeynos Harbor")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "", "", "thanks", 0, 0, Player)
	AddConversationOption(conversation, "I'll be on my way then.")
	StartConversation(conversation, QuestGiver, Player, "Return to me after you've spoken with Inn Keeper Galsway, and I'll see that you'll have a few more coins to rub together.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've delivered the message to Innkeeper Galsway.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Innkeeper Galsway was unhappy about Dawson's delay.")
    UpdateQuestZone(Quest,"North Qeynos")
	AddQuestStepChat(Quest, 2, "I need return to Dawson Magnificent.", 1, "I need to let Dawson Magnificent know that Galsway would be already, but his pay would be reduced.", 11, 2220113)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've returned to Dawson Magnificent.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Dawson Magnificent understood about the reduced payment.")

	UpdateQuestDescription(Quest, "I spoke with Innkeeper Galsway regarding Dawson Magnificent's tardiness.  He didn't seem displeased, though he was disappointed to hear that his favorite performers would be late.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
		end
end
