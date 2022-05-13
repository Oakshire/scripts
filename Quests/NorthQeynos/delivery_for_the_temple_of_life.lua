--[[
    Script Name    : Quests/NorthQeynos/delivery_for_the_temple_of_life.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.11 05:05:58
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Gavin Ironforge
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to deliver a box of jewelry to Medic Rowena.", 1, "I need to head over to the Temple of Life in Qeynos North to speak to medic Rowena.", 927, 2220142)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/gavin_ironforge/qey_north/gavinironforge002.mp3", "", "smile", 2486535171, 583526887, Player)
	AddConversationOption(conversation, "I'll make sure Rowena receives this.")
	StartConversation(conversation, QuestGiver, Player, "Wonderful!  Take this small box to Medic Rowena in the temple.  Tell her the Jewel Box sent you.  She'll be very pleased as she is not expecting it until tomorrow!  You will have some coin upon your return.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I delivered the box of jewelry to Medic Rowena.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Medic Rowena sends her thanks to Gavin Ironforge for the speedy delivery.")

	AddQuestStepChat(Quest, 2, "I need to return to Gavin.", 1, "I need to let Gavin know the box was delivered and tell him about Rowena's reaction.", 11, 2220475)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Gavin Ironforge.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Gavin Ironforge was pleased to hear about Medic Rowena's interest in the box.")

	UpdateQuestDescription(Quest, "Medic Rowena showed great pleasure in the fact that the etchings from Gavin Ironforge were delivered a day early.  Surely the blessings of Rodcet Nife shall follow me should the gods ever return to our world. <br> <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
