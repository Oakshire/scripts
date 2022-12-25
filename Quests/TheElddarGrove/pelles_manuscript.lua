--[[
	Script Name		:	pelles_manuscript.lua
	Script Purpose	:	Handles the quest, "Pelle's Manuscript"
	Script Author	:	Dorbin
	Script Date		:	5/2/2022
	Script Notes	:	

	Zone			:	The Elddar Grove
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]

require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Rune Shimmerstar in South Qeynos.", 1, "I must give this manuscript to Rune Shimmerstar at the mage's tower in South Qeynos.", 711, 2310081)
	AddQuestStepCompleteAction(Quest, 1, "QuestStep2")
    UpdateQuestZone(Quest, "South Qeynos")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Great news!  Best I've had all day, really.  Now, make certain that it is a human by the name of Rune Shimmerstar who receives this!  He's the only one over there at the Three Towers I'll trust!  Never made it a habit to put much faith in those magey folk.  You know, we had quite a few adventures together, Rune and me!  Quite a nice chap once you get to know him, really.")
	Dialog.AddVoiceover("voiceover/english/pelle_shinkicker/qey_elddar/pelleshinkicker003.mp3", 2052304892, 1411111467)
    PlayFlavor(QuestGiver, "", "", "smile", 0, 0, Player)	
	Dialog.AddOption("I'll be back shortly.")
	Dialog.AddOption("If we don't stop talking now I may never get there!")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestStep2(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've spoken with Rune Shimmerstar.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Rune Shimmerstar has laid an enchantment on the book to preserve it.")
    UpdateQuestZone(Quest, "Oakmyst Forest")
	AddQuestStepChat(Quest, 2, "I need to deliver this book to Aundor Singingsword in the Oakmyst Forest", 1, "Rune Shimmerstar asked me to show Aundor Singingsword the newly bound book.", 720, 1950021,8300020)
	AddQuestStepCompleteAction(Quest, 2, "QuestStep3")
end

function QuestStep3(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Aundor Singingsword.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Aundor Singingsword revealed some of Pelle's exaggerations.")
    UpdateQuestZone(Quest, "The Elddar Forest")
	AddQuestStepChat(Quest, 3, "I need to deliver this book to Pelle Shinkicker in the Elddar Grove", 1, "Pelle Shinkicker is waiting for his book to be returned in the Elddar Grove.", 720, 2070067)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've returned to Pelle Shinkicker.")
	UpdateQuestTaskGroupDescription(Quest, 3, "Pelle was pleased to hear about how his new work was recieved.")

	UpdateQuestDescription(Quest, "After I spoke with Rune Shimmerstar, he sent me off to go speak with yet another of their old company.  I was relieved to find Aundor only wished me to return Pelle's copy of the book and not play messenger any longer. When I returned to Pelle, he did have a rather nice bracelet for me!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
        QuestStep2(Quest,Questgiver,Player)
    elseif Step == 2 then
        QuestStep3(Quest,Questgiver,Player)
    elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

