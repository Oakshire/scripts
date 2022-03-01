--[[
	Script Name		:	recovery_of_the_bloodsaber_plans.lua
	Script Purpose	        :	Handles the quest, "Recovery of the Bloodsaber Plans"
	Script Author	        :	premierio015
	Script Date		:	24.05.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	The City of Qeynos (The Elddar Grove), Vermin's Snye
	Quest Giver		:	Wesaelan Brookshadow 
	Preceded by		:	Journal of Elkare
	Followed by		:	Unraveling the Bloodsaber Plots
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to recover illicit plans from a Bloodsaber fanatic in the Vermins' Snye.", 1, 100, "I need to recover a set of the Bloodsaber plans from the Vermins' Snye.", 185, 2000023)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

        PlayFlavor(QuestGiver, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_17.mp3", "", "", 414415751, 4251476403, Spawn)
        AddConversationOption(conversation, "Very well.")
        StartConversation(conversation, QuestGiver, Player, "Then go to the Snye and return to me with any information you can find on the Bloodsabers. We must put an end to this menace. We're counting on you, friend.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I recovered a set of the Bloodsaber plans.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I recovered a set of the Bloodsaber plans.")

	AddQuestStepChat(Quest, 2, "I must speak with Wesaelan Brookshadow in the Elddar Grove.", 1, "I need to speak with Wesaelan Brookshadow about the plans I found.", 11, 2070043, 6600365) -- ID's both for old and new areas.
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I spoke with Wesaelan Brookshadow.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I spoke with Wesaelan about the plans.")

	UpdateQuestDescription(Quest, "I managed to recover a set of the plans from the Bloodsabers in the Vermins' Snye.  When I returned to Wesaelan with the letter I'd found, he told me to seek out Captain Eitoa, and give her the information that I have so far. <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


