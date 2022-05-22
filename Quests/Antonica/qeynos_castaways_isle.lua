--[[
    Script Name    : Quests/Antonica/qeynos_castaways_isle.lua
    Script Author  : Premierio015
    Script Date    : 2022.05.20 08:05:58
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I need to visit the western of the gnoll islands south of Tyllia's location.", 10, "I need to check the island for supplies.", 11, 161, -25, 882, 12)
		AddQuestStepKill(Quest, 2, "I need to kill 12 gnolls on the island south of where Tyllia is.", 12, 100, "I need to check the island for supplies.", 1222, 120340, 120420, 121433, 121481)

	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, QuestGiver, Player, "Return to me once this is done.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have visited the island.")
  ProgressCheck(Quest, Player)
end

function ProgressCheck(Quest, Player)
	if QuestStepIsComplete(Player, 5560, 1) and QuestStepIsComplete(Player, 5560, 2)  then
		UpdateQuestTaskGroupDescription(Quest, 1, "I have done what Tyllia asked of me.")
	AddQuestStepChat(Quest, 3, "I need to return to Tyllia.", 1, "I need to return to Tyllia now that I've done as she asked.", 11, 121435)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have done as Tyllia asked.")
	end
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed 12 dankfur gnolls.")
ProgressCheck(Quest, Player)

end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Tyllia.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Tyllia.")

	UpdateQuestDescription(Quest, "I did as Tyllia asked. There were no supplies on the westernmost gnoll island.")
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

