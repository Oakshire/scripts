--[[
	Script Name		:	ay_theres_the_rubbish.lua
	Script Purpose	:	Handles the quest, "Ay, There's the Rubb'ish"
	Script Author	:	torsten
	Script Date		:	11.07.2022
	Script Notes	:

	Zone			:	Big Bend
	Quest Giver		:	Kroota Gukbutcher
	Preceded by		:	None
	Followed by		:	Rat Barsh!
--]]


function Init(Quest)
	AddQuestStepHarvest(Quest, 1, "Any pieces of rubbish need to be picked up.", 4, 100, "I am to remove the remnants of the fight from around the gates to the City of Freeport.", 2365, 1001007)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have removed enough of the junk near the gate.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have cleaned up the rubbish.")
	while HasItem(Player, 1001007) do
          RemoveItem(Player, 1001007)
    end
	
	AddQuestStepHarvest(Quest, 2, "Any thrown aside bones need to be picked up.", 2, 100, "I am to remove the remnants of the fight from around the gates to the City of Freeport.", 418, 1001008)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I have picked up enough bones at the gate. I should return to Kroota.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have cleaned up the rubbish.")
	while HasItem(Player, 1001008) do
          RemoveItem(Player, 1001008)
    end
	
	AddQuestStepChat(Quest, 3, "I should return to Kroota.", 1, "I should return to Kroota, I have cleaned up the rubbish.", 0, 1340040)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have removed enough of the junk near the gate.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have cleaned up the rubbish.")

	UpdateQuestDescription(Quest, "I cleaned up the trash and other signs of the fight from around the gate to South Freeport.")
	GiveQuestReward(Quest, Player)
end


function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
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

