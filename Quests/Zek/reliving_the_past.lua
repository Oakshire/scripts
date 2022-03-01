--[[
	Script Name		:	reliving_the_past.lua
	Script Purpose	:	Handles the quest, "Reliving the Past"
	Script Author	:	Jabantiz
	Script Date		:	6/19/2018
	Script Notes	:	

	Zone			:	Zek, the Orcish Wastes
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to check whether Tallon grunts are still in the hills just beyond the docks.", 10, "I will do the things Ismena Cellus requested.", 11, 496.05, -40.71, 208.04)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
	FaceTarget(QuestGiver, Player)
	local con = CreateConversation()

	AddConversationOption(con, "I'll be back.")
	StartConversation(con, QuestGiver, Player, "You're very kind.  I recall that after leaving the safety of the docks, we were set upon by Tallon orcs.  While many orcs seem to favor working in groups, the Tallon grunts preferred one-on-one battles.  Would you check whether they are still along the hills just outside the fort?")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've seen the orc's encampment.")

	AddQuestStepChat(Quest, 2, "I need to return to Ismena Cellus on the Warship Dock in Zek.", 1, "I will do the things Ismena Cellus requested.", 11, 1900056)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Ismena Cellus.")

	AddQuestStepKill(Quest, 3, "I will slay some Tallon grunts for Ismena's sake.", 10, 100, "I will do the things Ismena Cellus requested.", 611, 1900020)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have slain some Tallon grunts.")

	AddQuestStepChat(Quest, 4, "I need to return to Ismena Cellus on the Warship Dock in Zek.", 1, "I will do the things Ismena Cellus requested.", 11, 1900056)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've spoken with Ismena Cellus.")

	AddQuestStep(Quest, 5, "I need to visit the Grove of Stones in Zek.", 1, 100, "I will do the things Ismena Cellus requested.", 11)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've seen the Grove of Stones.")

	AddQuestStepChat(Quest, 6, "I need to return to Ismena Cellus on the Warship Dock in Zek.", 1, "I will do the things Ismena Cellus requested.", 11, 1900056)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I've spoken with Ismena Cellus.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've done what I could for Ismena Cellus.")

	UpdateQuestDescription(Quest, "I've done what Ismena requested.  Hopefully, she'll now be able to get her memoirs written.")
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
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
