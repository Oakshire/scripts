--[[
	Script Name		:	journal_of_elkare.lua
	Script Purpose	        :	Handles the quest, "Journal of Elkare"
	Script Author	        :	premierio015
	Script Date		:	23.05.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	The City of Qeynos
	Quest Giver		:	Wesaelan Brookshadow
	Preceded by		:	None
	Followed by		:	Recovery of the Bloodsaber Plans  
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must retrieve the tome from a giant oak tree in Antonica.", 1, 100, "I've been sent to retrieve a tome from a giant oak tree in the crop fields outside of Qeynos.", 711, 121816)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

        PlayFlavor(QuestGiver, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_04.mp3", "", "", 1096830596, 4200711932, Player)
        AddConversationOption(conversation, "I will return with the tome.")
        StartConversation(conversation, QuestGiver, Player, "Please, you must recover the tome! Qeynos depends on you!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've retrieved the tome from the oak tree in Antonica.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've recovered the tome from a group of brigands that ambushed me at the oak tree.")

	AddQuestStepChat(Quest, 2, "I must speak with Wesaelan and give him the tome.", 1, "I must return to Wesaelan with the tome I retrieved from the corpse of the brigand leader.", 11, 2070043)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Wesaelan about the events that transpired.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with Wesaelan about the events, and given him the ancient tome.")

	UpdateQuestDescription(Quest, "Strangely, I was ambushed by brigands just before I could reach the tree mentioned by Wesaelan.  There must be a spy within the ranks of the druid order in the Elddar Grove, for there is no other way I can think of that they could have known I would be coming.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

