--[[
	Script Name		:	Quests/TheCommonlands/SeerStone.lua
	Script Purpose	:	Handles the quest, "Seer Stone"
	Script Author	:	premierio015
	Script Date		:	18.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Madam Vi
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect five piles of bone dust from skeletons", 5, 100, "Madam Vi wants some components to complete her Seer Stone. I need to collect five piles of bone dust, five water glands, and five sparkly bits.", 181, 330075, 330076, 330077, 330329, 330232, 330074, 330228, 330158, 330279, 330083, 330211)
		AddQuestStepKill(Quest, 2, "I need to collect five water glands from any vulrich", 5, 100, "Madam Vi wants some components to complete her Seer Stone. I need to collect five piles of bone dust, five water glands, and five sparkly bits.", 135, 330031, 330032, 330087, 330774)
			AddQuestStepKill(Quest, 3, "I need to collect five sparkly bits from any wisps", 5, 100, "Madam Vi wants some components to complete her Seer Stone. I need to collect five piles of bone dust, five water glands, and five sparkly bits.", 2515, 330162, 330161, 330194, 330163)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
       	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "Please hurry!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected five piles of bone dust for Madam Vi.")
      CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected five water glands for Madam Vi at the Crossroads.")

	  CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected five sparkly bits for Madam Vi at the Crossroads.")
 
    CheckProgress(Quest, QuestGiver, Player)
end


function  CheckProgress(Quest, QuestGiver, Player)
     if QuestStepIsComplete(Player, 5225, 1) and  QuestStepIsComplete(Player, 5225, 2) and QuestStepIsComplete(Player, 5225, 3) then
    UpdateQuestTaskGroupDescription(Quest, 1, "I have collected all of the components for Madam Vi's Seer Stone and should return them to her at the Crossroads.")
	AddQuestStepChat(Quest, 4, "I should return to Madam Vi.", 1, "I have collected all of the components for Madam Vi's Seer Stone.", 11, 330179)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end 
   end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have returned to Madam Vi.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have helped Madam Vi complete her Seer Stone.")

	UpdateQuestDescription(Quest, "I collected all of the components for Madam Vi's Seer Stone.")
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

