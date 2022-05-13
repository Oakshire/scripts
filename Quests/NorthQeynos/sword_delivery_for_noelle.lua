--[[
    Script Name    : Quests/NorthQeynos/sword_delivery_for_noelle.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.11 08:05:36
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Walter Channing
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to deliver a sword to Noelle Dering.", 1, "Noelle Dering in North Qeynos awaits delivery of her sword from Walter Channing.", 612, 2220091)
	AddQuestStepCompleteAction(Quest, 1, "Step1Compelte")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/walter_channing/qey_north/walterchanning002.mp3", "", "happy", 1928822872, 914298154, Player)
	AddConversationOption(conversation, "I'll be sure to handle it with care.  I'll return soon.")
	StartConversation(conversation, QuestGiver, Player, "Ha ha!  That's the spirit!  I appreciate your kindness.  Return to me after you've delivered the longsword to Noelle Dering. She's giving this specially created sword as a gift to her husband.  He'll need to test out the sword to see if the balance needs to be changed.  You can find Noelle in Irontoes East.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Compelte(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've delivered the sword to Noelle Dering.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Noelle Dering has received the longsword.")

	AddQuestStepChat(Quest, 2, "I need to tell Walter Channing I've made the delivery.", 1, "Walter Channing needs to know Noelle happily accepted the blade.", 11, 2220053)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've returned to Walter Channing.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Walter Channing was pleased to hear Noelle appreciated his crafstmanship.")

	UpdateQuestDescription(Quest, "It appears that all is right.  Noelle Dering was very pleased with both the quality of the sword and the timeliness of the delivery.  Walter Channing seemed quite happy with my haste with delivering the sword as well.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Compelte(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
