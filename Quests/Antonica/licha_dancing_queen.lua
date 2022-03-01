--[[
    Script Name    : Quests/Antonica/licha_dancing_queen.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.16 06:08:58
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to find a windstalker villager who will watch Licha dance.", 1, "Licha wants me to gather an audience for her, I should find at least three people to watch her.", 11)
		AddQuestStep(Quest, 2, "I need to find a windstalker villager who will watch Licha dance.", 1, "Licha wants me to gather an audience for her, I should find at least three people to watch her.", 11)
	AddQuestStep(Quest, 3, "I need to find a windstalker villager who will watch Licha dance.", 1, "Licha wants me to gather an audience for her, I should find at least three people to watch her.", 11 )

	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Maybe.")
	StartConversation(conversation, QuestGiver, Player, "They'll come, you'll see.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I asked a villager to watch Licha.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I asked a villager to watch Licha.")
CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I asked a villager to watch Licha.")
   CheckProgress(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I spoke with Licha about her performance.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I asked Licha about her dance.")

	UpdateQuestDescription(Quest, "I helped Licha's dreams come true.")
	GiveQuestReward(Quest, Player)
end


function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5342, 1) and QuestStepIsComplete(Player, 5342, 2) and  QuestStepIsComplete(Player, 5342, 3) then
    	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered an audience for Licha.")
	AddQuestStepChat(Quest, 4, "I should ask Licha about her dance.", 1, "I should speak with Licha about her upcoming performance.", 11, 121308)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end
end


function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
