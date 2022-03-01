--[[
	Script Name		:	Quests/SerpentSewers/MurkwaterUniform.lua
	Script Purpose	        :	Handles the quest, "Murkwater Uniform"
	Script Author	        :	premierio015
	Script Date		:	16.06.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Serpent Sewer
	Quest Giver		:	Cicero Puer
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Boots off a Murkwater abettor.", 1, 25, "I need to get all of the pieces that make up the Murkwater uniform while here in the Serpent's Sewers.", 1398, 1550045, 1550008, 1550046, 1550009)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	conversation = CreateConversation()
        PlayFlavor(QuestGiver, "voiceover/english/cicero_puer/fprt_sewer02/ciceropuer006.mp3", "", "", 611926151, 2666895781, Player)
        AddConversationOption(conversation, "I'll return soon.")
        StartConversation(conversation, QuestGiver, Player, "Excellent!  Hurry now, there isn't much time!  The Murkwaters are down in the Serpent Sewers. I can smell them.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've got the Boots.")

	AddQuestStepKill(Quest, 2, "Leggings off a Murkwater steward.", 1, 25, "I need to get all of the pieces that make up the Murkwater uniform while here in the Serpent's Sewers.", 1402, 1550047, 1550010)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've got the Leggings.")

	AddQuestStepKill(Quest, 3, "Bracers off a Murkwater induct.", 1, 25, "I need to get all of the pieces that make up the Murkwater uniform while here in the Serpent's Sewers.", 1399, 1550011, 1550048)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've got the Bracers.")

	AddQuestStepKill(Quest, 4, "Gloves off a Murkwater induct.", 1, 25, "I need to get all of the pieces that make up the Murkwater uniform while here in the Serpent's Sewers.", 1400, 1550011, 1550048 )
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've got the Gloves.")

	AddQuestStepKill(Quest, 5, "Sleeves off a Murkwater steward.", 1, 25, "I need to get all of the pieces that make up the Murkwater uniform while here in the Serpent's Sewers.", 1417, 1550047, 1550010)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've got the Sleeves .")

	AddQuestStepKill(Quest, 6, "Chest piece off a Murkwater abettor.", 1, 25, "I need to get all of the pieces that make up the Murkwater uniform while here in the Serpent's Sewers.", 1397, 1550045, 1550008, 1550046, 1550009)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I've got the chest piece.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered all of the pieces that make up the Murkwater uniform.")

	AddQuestStepChat(Quest, 7, "I should get this stuff back to Cicero Puer.", 1, "I need to get this uniform to that ratonga, Cicero.", 11, 1550022, 1550059)
	AddQuestStepCompleteAction(Quest, 7, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 7, "I've given Cicero the clothes.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've given the uniform to Cicero.")

	UpdateQuestDescription(Quest, "I've given the ratonga the Murkwater uniform, now he's busy scheming who knows what.  Anyway, he stuck to his end of the bargain, and that's all that matters.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

