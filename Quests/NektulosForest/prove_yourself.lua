--[[
	Script Name		:	Quests/NektulosForest/prove_yourself.lua
	Script Purpose	:	Handles the quest, "Prove Yourself"
	Script Author	:	premierio015
	Script Date		:	19.06.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Nektulos Forest
	Quest Giver		:	Bruhn K'Viir (1790260)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to drop off the supplies at the scout camp on the southeast edge of the beach", 1, 100, "I must go to each scout camp and drop off the supplies. There are two scout camps on the beach, and one just beyond the beach off the path leading into the forest.", 397)
		AddQuestStep(Quest, 2, "I need to drop off the supplies at the scout camp just outside of the beach, off the path leading into the forest.", 1, 100, "I must go to each scout camp and drop off the supplies. There are two scout camps on the beach, and one just beyond the beach off the path leading into the forest.", 398)
	AddQuestStep(Quest, 3, "I need to drop off the supplies at the scout camp on the beach to the northwest of Bruhn's tent.", 1, 100, "I must go to each scout camp and drop off the supplies. There are two scout camps on the beach, and one just beyond the beach off the path leading into the forest.", 399)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
			AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
				AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
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

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I dropped off the supplies at the first scout camp")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I dropped off the supplies at the second scout camp.")
	CheckProgress(Quest, QuestGiver, Player)

end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5256, 1) and QuestStepIsComplete(Player, 5256, 2) and QuestStepIsComplete(Player, 5256, 3) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I dropped off the supplies at all three scout camps.")
	AddQuestStepChat(Quest, 4, "I need to let Bruhn K'Viir know that I delivered the supplies", 1, "I need to return to Bruhn K'Viir and let him know the supplies have been delivered.", 11, 1790260)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end
end

function Step3Complete(Quest, QuestGiver, Player)
		UpdateQuestStepDescription(Quest, 3, "I dropped off the supplies at the third scout camp.")
		CheckProgress(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I spoke with Bruhn")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Bruhn.")

	UpdateQuestDescription(Quest, "I resupplied the scouts at all of the camps. They then promptly ambushed me, and I promptly disposed of them.")
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
