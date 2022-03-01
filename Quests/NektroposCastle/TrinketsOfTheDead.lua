--[[
	Script Name	: Quests/NektroposCastle/TrinketsOfTheDead.lua
	Script Purpose	: Trinkets of the Dead
	Script Author	: smash
	Script Date	: 2016.1.24

        Zone            : Nektropos Castle
        Quest Giver     : Master Eldin Necrosis
        Preceded by     : None
        Followed by     : None
--]]

function Init(Quest)
	AddStep1(Quest)
	AddStep2(Quest)
	AddStep3(Quest)
	AddStep4(Quest)
	AddStep5(Quest)
	AddStep6(Quest)
	AddStep7(Quest)
	AddStep8(Quest)
	AddStep9(Quest)
	AddStep10(Quest)
end

function Accepted(Quest, QuestGiver, Player)
	AcceptedDialog(QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted()
end

function AcceptedDialog(QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/master_eldin_necrosis_/nektropos/eldin006.mp3", "", "", 2450617503, 1834362480, Player)
	AddConversationOption(conversation, "No problem at all!")
	StartConversation(conversation, QuestGiver, Player, "I'll pay you. Just head inside and bring me back whatever treasures you find! Once you finish, return to me, and I'll see about your payment!")
end

function AddStep1(Quest)
	AddQuestStepKill(Quest, 1, "I need to retrieve the Inquisitor of Ullkorruuk's censer.", 1, 100, "Eldin has asked me to retrieve several different kinds of items from the ghosts in Nektropos Castle.", 370, 1780194)
	AddQuestStepCompleteAction(Quest, 1, "Step1Completed")
end

function Step1Completed(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found the censer.")
	ShouldAddStep11(Quest, Player)
end

function AddStep2(Quest)
	AddQuestStepKill(Quest, 2, "I need to take the holy water from a priestess of Ullkorruuk.", 1, 100, "Eldin has asked me to retrieve several different kinds of items from the ghosts in Nektropos Castle.", 176, 1780009)
	AddQuestStepCompleteAction(Quest, 2, "Step2Completed")
end

function Step2Completed(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have the holy water.")
	ShouldAddStep11(Quest, Player)
end

function AddStep3(Quest)
	AddQuestStepKill(Quest, 3, "I need to retrieve one of Lord Everling's shirts from an Everling manservant.", 1, 100, "Eldin has asked me to retrieve several different kinds of items from the ghosts in Nektropos Castle.", 1736, 1780038, 1780040, 1780036)
	AddQuestStepCompleteAction(Quest, 3, "Step3Completed")
end

function Step3Completed(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have the shirt.")
	ShouldAddStep11(Quest, Player)
end

function AddStep4(Quest)
	AddQuestStepKill(Quest, 4, "I need to get the keyring from an Everling stable boy.", 1, 100, "Eldin has asked me to retrieve several different kinds of items from the ghosts in Nektropos Castle.", 2174, 1780027)
	AddQuestStepCompleteAction(Quest, 4, "Step4Completed")
end

function Step4Completed(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have the found the keyring.")
	ShouldAddStep11(Quest, Player)
end

function AddStep5(Quest)
	AddQuestStepKill(Quest, 5, "I need to take a scabard from a Thexian guard.", 1, 100, "Eldin has asked me to retrieve several different kinds of items from the ghosts in Nektropos Castle.", 921, 1780015, 1780029)
	AddQuestStepCompleteAction(Quest, 5, "Step5Completed")
end

function Step5Completed(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have taken the scabard.")
	ShouldAddStep11(Quest, Player)
end

function AddStep6(Quest)
	AddQuestStepKill(Quest, 6, "I should take the coin purse of a dark patron.", 1, 100, "Eldin has asked me to retrieve several different kinds of items from the ghosts in Nektropos Castle.", 10, 1780003, 1780192)
	AddQuestStepCompleteAction(Quest, 6, "Step6Completed")
end

function Step6Completed(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have taken the coin purse.")
	ShouldAddStep11(Quest, Player)
end

function AddStep7(Quest)
	AddQuestStepKill(Quest, 7, "I need to get the hair brush from Elise's handmaiden.", 1, 100, "Eldin has asked me to retrieve several different kinds of items from the ghosts in Nektropos Castle.", 1228, 1780195)
	AddQuestStepCompleteAction(Quest, 7, "Step7Completed")
end

function Step7Completed(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have the brush.")
	ShouldAddStep11(Quest, Player)
end

function AddStep8(Quest)
	AddQuestStepKill(Quest, 8, "I should retrieve Sheila Everling's bodice from her handmaiden.", 1, 100, "Eldin has asked me to retrieve several different kinds of items from the ghosts in Nektropos Castle.", 1738, 1780196)
	AddQuestStepCompleteAction(Quest, 8, "Step8Completed")
end

function Step8Completed(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I have the bodice.")
	ShouldAddStep11(Quest, Player)
end

function AddStep9(Quest)
	AddQuestStepKill(Quest, 9, "I need to find Crysta's bracelet. I'm sure her handmaiden has it.", 1, 100, "Eldin has asked me to retrieve several different kinds of items from the ghosts in Nektropos Castle.", 390, 1780197)
	AddQuestStepCompleteAction(Quest, 9, "Step9Completed")
end

function Step9Completed(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I have Crysta's bracelet.")
	ShouldAddStep11(Quest, Player)
end

function AddStep10(Quest)
	AddQuestStepKill(Quest, 10, "I need to find Jenni's hair bow from her handmaiden.", 1, 100, "Eldin has asked me to retrieve several different kinds of items from the ghosts in Nektropos Castle.", 739, 1780198)
	AddQuestStepCompleteAction(Quest, 10, "Step10Completed")
end

function Step10Completed(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 10, "I have the hair bow.")
	ShouldAddStep11(Quest, Player)
end

function ShouldAddStep11(Quest, Player)
	--Check if step 1-10 have all been completed
	local i = 1
	local should_add = true
	while i < 11 do
		if not QuestStepIsComplete(Player, 174, i) then
			should_add = false
			break
		end
		i = i + 1
	end
	
	if should_add then
		AddStep11(Quest)
	end
end

function AddStep11(Quest)
    AddQuestStepChat(Quest, 11, "I should go speak with Eldin.", 1, "Now that I have gathered all of the trinkets I should go give them to Eldin.", 0, 1780008)
	AddQuestStepCompleteAction(Quest, 11, "CompleteQuest")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have all of the items that Eldin wanted.")
	SetCompleteFlag(Quest)
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Completed(Quest, QuestGiver, Player)
	end
	if Step == 2 then
		Step2Completed(Quest, QuestGiver, Player)
	end
	if Step == 3 then
		Step3Completed(Quest, QuestGiver, Player)
	end
	if Step == 4 then
		Step4Completed(Quest, QuestGiver, Player)
	end
	if Step == 5 then
		Step5Completed(Quest, QuestGiver, Player)
	end
	if Step == 6 then
		Step6Completed(Quest, QuestGiver, Player)
	end
	if Step == 7 then
		Step7Completed(Quest, QuestGiver, Player)
	end
	if Step == 8 then
		Step8Completed(Quest, QuestGiver, Player)
	end
	if Step == 9 then
		Step9Completed(Quest, QuestGiver, Player)
	end
	if Step == 10 then
		Step10Completed(Quest, QuestGiver, Player)
	end
end