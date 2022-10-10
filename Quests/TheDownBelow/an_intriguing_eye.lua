--[[
    Script Name    : Quests/TheDownBelow/an_intriguing_eye.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.03 03:10:05
    Script Purpose : Access Quest 

        Zone       : The Down Below
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Slay Bloodsaber meddlers", 1, 30, "Writing on the book states that rat men, possibly the Bloodsabers of the Down Below carry information I need. I will hack through their ranks until I find a clue about the symbol.", 374, 1990027)
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
	UpdateQuestStepDescription(Quest, 1, "I've killed Bloodsaber meddlers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I slew Bloodsaber rat men until I found a clue.")
    if not HasItem(Player,1236) and GetQuestStep(Player,5366) == 2 then
    GiveQuestItem(Quest, Player, "I slew Bloodsaber rat men until I found a clue.", 1236)
    end
	AddQuestStep(Quest, 2, "Read the Bloodsaber note", 1, 100, "I should read the note I now carry in my inventory, the one I found on the Bloodsaber.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've read the Bloodsaber note.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I read the note found on the Bloodsaber. Oddly...it was written in common Norrathian.")

	AddQuestStepChat(Quest, 3, "Speak to Gornit Penwiggle", 1, "I need to find Gornit Penwiggle in the Qeynos Province District. He is a record keeper and may know of this coin.", 11, 2380003, 6600257)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've spoken to Gornit Penwiggle.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I spoke to Gornit Penwiggle about the coin.")

	AddQuestStepKill(Quest, 4, "Slay some coiled burrowers", 3, 100, "I need to fill the hunting list for Gornit Penwiggle.  I should be able to find these critters in the Down Below.", 109, 1990009)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I killed some coiled burrowers.")

	AddQuestStepKill(Quest, 5, "Slay some rabid shrillers", 4, 100, "I need to fill the hunting list for Gornit Penwiggle.  I should be able to find these critters in the Down Below.", 178, 1990001)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I killed some rabid shrillers.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I filled the hunting list for Gornit Penwiggle.")

	AddQuestStepChat(Quest, 6, "Speak to Gornit Penwiggle", 1, "I need to return to the Qeynos Province District to speak with Gornit Penwiggle.", 11, 2380003, 6600257)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I've spoken to Gornit Penwiggle.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I returned to the Qeynos Province District and spoke with Gornit Penwiggle.")

	AddQuestStepChat(Quest, 7, "Speak to the collector", 1, "I need to speak to a collector at the Collector's Trove here in the Qeynos Province District.", 11, 2340024, 6600239)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I've spoken to Blagard.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I spoke to Blagard at the Collector's Trove.")

	AddQuestStepChat(Quest, 8, "Speak to Constable Arathur", 1, "I need to speak to Constable Arathur somewhere in the Qeynos Province District.", 11, 2330048, 6600248)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I've spoken to Constable Arathur.")
	UpdateQuestTaskGroupDescription(Quest, 7, "I spoke to Constable Arathur in the Qeynos Province District.")

	AddQuestStepKill(Quest, 9, "Slay a fallen noble.", 1, 100, "I need to slay a fallen noble in the deep depths of the Down Below.", 11, 1990017, 1990018)
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
end

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I destroyed a fallen noble")
	UpdateQuestTaskGroupDescription(Quest, 8, "I slew a fallen noble in the Down Below and gained an Unseen Hand Coin.")

	AddQuestStepZoneLoc(Quest, 10, "Find the hand statue.", 5, "I need to find the hand statue of the Circle of the Unseen Hand in the Down Below. Constable Arathur noted this as the entrance in the thieves' hive.", 975, -143, 0, -74, 199)
	AddQuestStepCompleteAction(Quest, 10, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 10, "I found the hand statue.")
	UpdateQuestTaskGroupDescription(Quest, 9, "I discovered the hand statue of the Circle of the Unseen Hand.")

	UpdateQuestDescription(Quest, "The symbol has led me to believe there is a secret hideout of some sorts in the Down Below. Who is in the hideout is a mystery I will surely find out and report to the Qeynos Guard.")
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
		Step8Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		Step9Complete(Quest, QuestGiver, Player)
	elseif Step == 10 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

