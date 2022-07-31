--[[
	Script Name		:	poisonous_zever.lua
	Script Purpose	:	Handles the quest, "Poisonous Zever"
	Script Author	:	torsten
	Script Date		:	31.07.2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Scale Yard
	Quest Giver		:	Zever Tzizzink
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to gather some putrid dragoon tongues for Zever's antidote.", 9, 100, "I need to kill nine tormented souls in Fallen Gate.", 89, 1190050, 1190004, 1190008, 1190043, 1190045, 1190051, 1190052, 1190061, 1190062, 1190069)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've gathered putrid dragoon tongues for Zever's antidote.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I killed nine tormented souls in Fallen Gate.")

    AddQuestStepChat(Quest, 2, "I should return to Zever Tzizzink.", 1, "I should return to Zever Tzizzink to deliver the tongues.", 11, 1370024)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I returned to Zever Tzizzink.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Zever Tzizzink.")

	AddQuestStepKill(Quest, 3, "I need to gather some snake fangs for Zever's antidote.", 12, 100, "I need to kill twelve gloom snakes in Fallen Gate.", 137, 1190019)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've gathered snake fangs for Zever's antidote.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I killed twelve gloom snakes in Fallen Gate.")

    AddQuestStepChat(Quest, 4, "I should return to Zever Tzizzink.", 1, "I should return to Zever Tzizzink to deliver the hearts.", 11, 1370024)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
    UpdateQuestDescription(Quest, "That double-crossing sneak! Instead of getting ingredients for an antidote, Zever had me gathering ingredients for a deadly poison!  He thought he gave me a piece of junk for a reward, but he was mistaken!")
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
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
