--[[
    Script Name    : Quests/Antonica/scrawlings_in_the_dark.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.21 06:07:18
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStep(Quest, 1, "Search for the unholy tome 'Scrawlings of Chirannis.'", 1, 100, "I must venture into Blackburrow and search for the Ark of Chirannis. Inside will be the tome called Scrawlings of Chirannis.", 717)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("I desire a trinket for a trinket, a stolen vault of knowledge. Within the depths of the Sabertooth lair resides a tome bound of gnoll hide and scribed in the black blood of Norrath. Find and return this tome to me, and I shall grant you wonders of time long past. Find me the Scrawlings of Chirannis.")
    Dialog.AddVoiceover("voiceover/english/optional1/rikantus/antonica/rikantus005.mp3", 1926201932, 488253869)
    Dialog.AddOption("I will return the tome to you.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Found the unholy tome 'Scrawlings of Chirannis.'")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the tome called 'Scrawlings of Chirannis,' but five pages have been removed.")
	AddQuestStepKill(Quest, 2, "Hunt down Sabertooth diviners for the first missing page.", 1, 100, "I must obtain the five missing pages of the 'Scrawlings of Chirannis' from the paws of the gnoll priests in Blackburrow.", 2180, 170019)
	AddQuestStepKill(Quest, 3, "Hunt down Sabertooth chanters for the next missing page.", 1, 100, "I must obtain the five missing pages of the 'Scrawlings of Chirannis' from the paws of the gnoll priests in Blackburrow.", 2180, 170026)
	AddQuestStepKill(Quest, 4, "Hunt down Sabertooth oracles for the final missing pages.", 3, 100, "I must obtain the five missing pages of the 'Scrawlings of Chirannis' from the paws of the gnoll priests in Blackburrow.", 2180, 170042)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Obtained a missing page of 'Scrawlings of Chirannis.'")

		CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Obtained a missing page of 'Scrawlings of Chirannis.'")

	CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "Obtained the final pages of 'Scrawlings of Chirannis.'")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5329, 1) and QuestStepIsComplete(Player, 5329, 2) and QuestStepIsComplete(Player, 5329, 3) and QuestStepIsComplete(Player, 5329, 4) then
    UpdateQuestTaskGroupDescription(Quest, 1, "I found the tome called 'Scrawlings of Chirannis,' but five pages have been removed.")
    UpdateQuestTaskGroupDescription(Quest, 2, "I obtained the five missing pages of the 'Scrawlings of Chirannis' from the paws of the gnoll priests in Blackburrow.")
	AddQuestStepChat(Quest, 5, "Return to Rikantus at Evernight Cemetery in Antonica.", 1, "I must return the 'Scrawlings of Chirannis' to Rikantus at Evernight Cemetery in Antonica.", 11, 120403)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end
 end   

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "Returned to Rikantus at Evernight Cemetery in Antonica.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I gave the tome called 'Scrawlings of Chirannis' to Rikantus at Evernight Cemetery in Antonica.")
    if HasItem(Player, 14236) then
    RemoveItem(Player, 14236)
    end
	UpdateQuestDescription(Quest, "I gave the tome called 'Scrawlings of Chirannis' to Rikantus at Evernight Cemetery in Antonica.")
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

