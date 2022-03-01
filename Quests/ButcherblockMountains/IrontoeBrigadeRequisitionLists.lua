--[[
	Script Name		:	IrontoeBrigadeRequisitionLists.lua
	Script Purpose	:	Handles the quest, "Irontoe Brigade Requisition Lists"
	Script Author	:	jakejp
	Script Date		:	6/8/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]

local IrontoeBrigadeRequisitionLists = 282

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need the requisition list from the first Irontoe Brigade miner foreman.", 1, "I need the requisition lists from the Irontoe Brigade miner foremans.", 75, 1080328)
	AddQuestStepChat(Quest, 2, "I need the requisition list from the second Irontoe Brigade miner foreman.", 1, "I need the requisition lists from the Irontoe Brigade miner foremans.", 75, 1081245)
	AddQuestStepChat(Quest, 3, "I need the requisition list from the third Irontoe Brigade miner foreman.", 1, "I need the requisition lists from the Irontoe Brigade miner foremans.", 75, 1080324)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, IrontoeBrigadeRequisitionLists, 1) and QuestStepIsComplete(Player, IrontoeBrigadeRequisitionLists, 2) and QuestStepIsComplete(Player, IrontoeBrigadeRequisitionLists, 3) then
			HandInQuest(Quest, QuestGiver, Player)
	  end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the first requisition list.")
 CheckProgress(Quest, QuestGiver, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have the second requisition list.")
  CheckProgress(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have the third requisition list.")
	CheckProgress(Quest, QuestGiver, Player)
end

function HandInQuest(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the requisition lists.")

	AddQuestStepChat(Quest, 4, "I need to return to Argro.", 1, "I need to bring these requisition lists to Argro.", 11, 1081147)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Argro.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given Argro the requision lists.")

	UpdateQuestDescription(Quest, "I got the requisition lists from the dig foremen for Argro.")
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

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end