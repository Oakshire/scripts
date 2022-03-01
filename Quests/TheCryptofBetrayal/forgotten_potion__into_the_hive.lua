--[[
    Script Name    : Quests/TheCryptofBetrayal/forgotten_potion__into_the_hive.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.15 08:10:16
    Script Purpose : 

        Zone       : TheCryptofBetrayal
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect deathly scarab antennae inside the Qeynos Catacombs.", 15, 100, "I need to collect deathly scarab antennae inside the Qeynos Catacombs and give them to Cryptkeeper Maglus.", 112, 2010002, 2010013)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will be back.")
	StartConversation(conversation, QuestGiver, Player, "Perfect! I'll just stand here, quietly hoping not to, you know, Ka-BOOM!")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I need to take these deathly scarab antennae to Cryptkeeper Maglus in the Crypt of Betrayal.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I need to take these deathly scarab antennae to Cryptkeeper Maglus in the Crypt of Betrayal.")

	AddQuestStepChat(Quest, 2, "Cryptkeeper Maglus is in the Crypt of Betrayal.", 1, "I must take these deathly scarab antennae to Cryptkeeper Maglus.", 11, 2010043)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I gave the deathly scarab antennae to Cryptkeeper Maglus.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave the deathly scarab antennae to Cryptkeeper Maglus.")

	AddQuestStepKill(Quest, 3, "I need to enter the lair of the deathly scarabs and slay their Queen.", 1, 100, "I need to enter the deathly scarab nest. Once there I need to collect five deathly scarab worker antennae and slay their queen.", 11, 2040008)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have slain the Queen of the deathly scarabs.")

	AddQuestStepKill(Quest, 4, "I need to collect five deathly scarab antennae from inside the Queen's lair.", 5, 100, "I need to enter the deathly scarab nest. Once there I need to collect five deathly scarab worker antennae and slay their queen.", 112, 2040004)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have collect the five deathly scarab antennae from inside the Queen's lair.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have collected the five deathly scarab worker antennae and I have slain their Queen.")

	AddQuestStepChat(Quest, 5, "Cryptkeeper Maglus is in the Crypt of Betrayal.", 1, "I need to tell Cryptkeeper Maglus that the deathly scarab nest and its Queen are destroyed.", 11, 2010043)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I have told Cryptkeeper Maglus that the deathly scarab nest and its queen are destroyed.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have told Cryptkeeper Maglus that the deathly scarab nest and its Queen are destroyed.")

	UpdateQuestDescription(Quest, "I've gotten the deathly scarab antennae for Cryptkeeper Maglus so that she can make her potion.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
