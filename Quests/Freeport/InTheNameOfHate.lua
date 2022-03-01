--[[
	Script Name	:	Quests/Freeport/InTheNameOfHate.lua
	Script Purpose	:	Handles the quest, "In The Name of Hate"
	Script Author	:	premierio015
	Script Date	:	06.09.2020
	Script Notes	:	NOT DONE YET!

	Zone		:	The City of Freeport
	Quest Giver	:	Dyymona K'Vexx
	Preceded by	:	None
	Followed by	:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Find and slay the Thexian escapees", 10, 100, "I should find the hiding Thexians along the crumbling wall and guard towers within Commonlands, near Turmoil Cemetery.", 11, 1)
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
	UpdateQuestStepDescription(Quest, 1, "")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the escaped Thexians and cleansed this world of them!")

	AddQuestStep(Quest, 2, "Gather Thexian priest robe", 1, 100, "I have been entrusted with collecting the stolen tomes of arcanum and with stealing a Thexian robe around the crumbling wall and guard towers within Commonlands, near Turmoil Cemetery.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "")

	AddQuestStep(Quest, 3, "Gather Thexian tomes of arcanum", 5, 100, "I have been entrusted with collecting the stolen tomes of arcanum and with stealing a Thexian robe around the crumbling wall and guard towers within Commonlands, near Turmoil Cemetery.", 11)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "")
	UpdateQuestTaskGroupDescription(Quest, 2, "I collected the stolen tomes of arcanum and a Thexian robe for Dyymona K’Vexx.")

	AddQuestStepChat(Quest, 4, "Return to Dyymona K'Vexx", 1, "I should return to Dyymona K'Vexx, at the Academy of Arcane Science in the city of Freeport.", 11, 1)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned to Dyymona K'Vexx, the dark elf mentor.")

	AddQuestStepChat(Quest, 5, "Deliver missive to L'rak Ta'Wound", 1, "Dyymona K'Vexx has given me a missive to deliver to L'rak Ta'Wound, an Arasai working at the Nerian embassy in Freeport.", 11, 1)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "")
	UpdateQuestTaskGroupDescription(Quest, 4, "I delivered Dyymona's missive to L'rak Ta'Wound, at the Nerian embassy in Freeport.")

	AddQuestStepChat(Quest, 6, "Return to Dyymona K'Vexx", 1, "I should return to Dyymona K'Vexx, at the Academy of Arcane Science in the city of Freeport.", 11, 2)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "")
	UpdateQuestTaskGroupDescription(Quest, 5, "I returned to Dyymona K'Vexx, the dark elf mentor.")

	UpdateQuestDescription(Quest, "After regaining the stolen tomes of arcanum and delivering a missive, Dyymona K'Vexx complimented me on my dependability, saying, \"It is rare to find another Teir'Dal whom you can trust, implicitly.\"")
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
