--[[
	Script Name		:	Quests/Commonlands/AHuntersTool.lua
	Script Purpose	:	Handles the quest, "A Hunter's Tool"
	Script Author	:	premierio015
	Script Date		:	11.01.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepHarvest(Quest, 1, "I need to gather maple from wind felled trees", 5, 100, "J.P. Feterman has asked me to gather some components for him to fix his favorite bow.", 824, 12101)
		AddQuestStepHarvest(Quest, 2, "I need to gather tuber strands from desert roots", 3, 100, "J.P. Feterman has asked me to gather some components for him to fix his favorite bow.", 194, 14701)
			AddQuestStepKill(Quest, 3, "I need compound bow cams from dervish cutthroats", 2, 100, "J.P. Feterman has asked me to gather some components for him to fix his favorite bow.", 2279, 330092, 330104)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
			AddQuestStepCompleteAction(Quest, 3, "Step3Complete")


end

function Accepted(Quest, QuestGiver, Player)
	 FaceTarget(QuestGiver, Player)
         conversation = CreateConversation()
         AddConversationOption(conversation, "Sure you were.")
         StartConversation(conversation, QuestGiver, Player, "Ah, I can imagine using it even now. Greatest ever, I was.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gathered maple for J.P. Feterman.")
        UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered maple for J.P. Feterman.")
        CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have J.P. Feterman's tuber strands.")
        UpdateQuestTaskGroupDescription(Quest, 2, "I have J.P. Feterman's tuber strands.")
        CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have the bow cams for J.P. Feterman.")
        CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 418, 1) and QuestStepIsComplete(Player, 418, 2) and QuestStepIsComplete(Player, 418, 3) then
    UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered the components and should return to J.P. Feterman.")
    AddQuestStepChat(Quest, 4, "I need to return to J.P. Feterman", 1, "I have J.P. Feterman's bow components and should speak with him again.", 9, 330261)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end
  end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have given J.P. Feterman his bow.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with J.P. Feterman.")

	UpdateQuestDescription(Quest, "I gathered the components that J.P. Feterman needed to reconstruct his bow.")
	GiveQuestReward(Quest, Player)
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
