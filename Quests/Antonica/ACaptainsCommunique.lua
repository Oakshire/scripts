--[[
	Script Name		:	ACaptainsCommunique.lua
	Script Purpose	:	Handles the quest, "A Captain's Communique: Eitoa to Sturman"
	Script Author	:	geordie0511
	Script Date		:	19.03.2019
	Script Notes	:	

	Zone			:	Antonica
	Quest Giver		:	Captain Eitoa
	Preceded by		:	Gnoll Report
	Followed by		:	Outland Brigade Reports
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to Captain Sturman.", 1, "I need to deliver this communique to Captain Sturman at Bridge Keep in the Thundering Steppes.", 11, 2490194)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Spoke to Captain Sturman.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I delivered the message to Captain Sturman.")

	AddQuestStepChat(Quest, 2, "Speak to Captain Eitoa.", 1, "I should return to Captain Eitoa at the Qeynos Gates in Antonica and let her know of the situation in Bridge Keep.", 11, 120069)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "Spoken with Captain Eitoa.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Captain Eitoa.")

	UpdateQuestDescription(Quest, "I took the message to Captain Sturman. He was not happy to hear that he was unable to get reinforcements or replacements for his tired men in Bridge Keep. I let Captain Eitoa know of the situation in the Thundering Steppes.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
end
