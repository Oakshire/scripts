--[[
	Script Name		:	Quests/EdgewaterDrains/inside_the_edgewater_drains.lua
	Script Purpose	:	Handles the quest, "Inside the Edgewater Drains"
	Script Author	:	premierio015
	Script Date		:	06.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Access Quests
	Quest Giver		:	Bendik Jonkers(1560021)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to obtain five different components in the Edgewater Drains and bring them to Bendik Jonkers.", 1, 100, "I need to obtain five different components in the Edgewater Drains and bring them to Bendik Jonkers.", 1073)
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
	UpdateQuestStepDescription(Quest, 1, "I found the ancient sieve.")

	AddQuestStep(Quest, 2, "I need to obtain five different components in the Edgewater Drains and bring them to Bendik Jonkers.", 1, 100, "I need to obtain five different components in the Edgewater Drains and bring them to Bendik Jonkers.", 781)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found some copper wire.")

	AddQuestStep(Quest, 3, "I need to obtain five different components in the Edgewater Drains and bring them to Bendik Jonkers.", 1, 100, "I need to obtain five different components in the Edgewater Drains and bring them to Bendik Jonkers.", 736)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found a rusted iron bracket.")

	AddQuestStep(Quest, 4, "I need to obtain five different components in the Edgewater Drains and bring them to Bendik Jonkers.", 1, 100, "I need to obtain five different components in the Edgewater Drains and bring them to Bendik Jonkers.", 985)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I found a length of corroded chain.")

	AddQuestStep(Quest, 5, "I need to obtain five different components in the Edgewater Drains and bring them to Bendik Jonkers.", 1, 100, "I need to obtain five different components in the Edgewater Drains and bring them to Bendik Jonkers.", 1041)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I found a set of nesting cogwheels.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've located the various components Bendik Jonkers requested.  Now to claim my reward.")

	AddQuestStepChat(Quest, 6, "I need to return to Bendik Jonkers with the five parts he needs.", 1, "Bendik Jonkers will want these components.", 11, 1560021)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have returned the five items to Bendik Jonkers.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I must obtaine a key to the Murkwater's hideout to get back my reward.")

	AddQuestStepKill(Quest, 7, "I need to obtain a key to the Murkwater hideout from one of the Murkwater henchmen in the Edgewater Drains.", 1, 10, "I must find a key to the Murkwater's hideout.", 1009, 1560004, 1560012)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have obtained a key to the Murkwater hideout.  Now I must confront Madame Kisa.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I must slay Madame Kisa, leader of the Murkwater gang.")

	AddQuestStepKill(Quest, 8, "I will use my key to enter the Murkwater hideout in the Edgewater Drains and confront the Murkwater leader, Madame Kisa.", 1, 100, "I will use my key to enter the Murkwater hideout in the Edgewater Drains and confront the Murkwater leader, Madame Kisa.", 11, 4750003)
	AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "I have slain Madame Kisa, leader of the Murkwater gang.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have slain Madame Kisa, leader of the Murkwater gang.")

	UpdateQuestDescription(Quest, "After finding all five of the discarded parts for Bendik Jonkers, I learned that the Murkwater henchmen stole my reward.  After slaying several Murkwater Henchmen, I obtained a key to their hideout, where I confronted and brought down their leader, Madame Kisa.")
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
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

