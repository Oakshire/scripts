--[[
	Script Name		:	training_will_get_you_everywhere.lua
	Script Purpose	:	Handles the quest, "Training Will Get You Everywhere"
	Script Author	:	Neatz09
	Script Date		:	1/19/2019
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The Sprawl
	Quest Giver		:	Enforcer Kurdek
	Preceded by		:	None
	Followed by		:	
--]]

local Enforcer_Kurdek = 1260017
local Trainer_Durbok = 1260016


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to Trainer Durbok", 1, "I need to speak to Trainer Durbok in the Sprawl, who is teaching combat to the Giantslayers.  I can reach the Sprawl by using any of the bells in and around the City of Freeport.", 11, Trainer_Durbok)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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
	UpdateQuestStepDescription(Quest, 1, "I have spoken to Trainer Durbok, who is displeased with the progress of the Giantslayers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken to Trainer Durbok and must tell Enforcer Kurdek what I have learned.")

	AddQuestStepChat(Quest, 2, "Return to Enforcer Kurdek", 1, "I must return to Enforcer Kurdek in the Sprawl with my report.  I can reach the Sprawl by using any of the bells in and around the City of Freeport.", 11, Enforcer_Kurdek)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned to Enforcer Kurdek and told him what I learned from Trainer Durbok.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have reported back to Enforcer Kurdek.")

	UpdateQuestDescription(Quest, "I spoke with Trainer Durbok, who feels that the Giantslayers are not focused enough on their training. He feels that their leader, Brutemaster Tarden, is responsible for this failing. Enforcer Kurdek has been notified and is none too happy about it.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
