--[[
    Script Name    : Quests/Antonica/a_bow_for_a_beauty.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.15 03:09:32
    Script Purpose : Item reward  "Gnoll-hide Pouch" is missing in Database

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Landwyn has asked me to collect earthcrawler leg joints.", 5, 30, "I need to gather perfectly polished earthcrawler leg joints for Landwyn.", 1908, 120121, 121267)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I shall do so graciously.")
	StartConversation(conversation, QuestGiver, Player, "Then go, please, and find the best, most polished limbs possible!")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gathered all the earthcrawler leg joints.")

	AddQuestStepZoneLoc(Quest, 2, "I should polish these earthcrawler leg joints for Landwyn. The water in Crater pond should work well.", 50, "I need to polish the earthcrawler leg joints for Landwyn.", 2514,128.12, -24.96, 481.58, 12 )
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have polished the earthcrawler leg joints, and should return them to Landwyn.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected earthcrawler leg joints for Landwyn.")

	AddQuestStepChat(Quest, 3, "I need to return to Landwyn.", 1, "I should return these parts to Landwyn.", 1908, 121388)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have helped Landwyn once again.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given Landwyn what he requested.")

	UpdateQuestDescription(Quest, "I have collected all of the earthcrawler leg joints for Landwyn.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

