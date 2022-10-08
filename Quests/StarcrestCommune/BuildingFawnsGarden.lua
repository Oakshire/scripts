--[[
	Script Name	:	BuildingFawnsGarden.lua
	Script Purpose	:	Handles the quest, "Building Fawn's Garden"
	Script Author	:	Ememjr
	Script Date	:	10/29/2017
	Script Notes	: Overhauled by Dorbin to connect update check and added standard quest reload script if player zones to retain progress.
	NOTE: This quest info is NOT the classic version. Should flow:  FawnStarts -> 15Wolves -> Fawn -> 5Octopuses -> FawnDone

	Zone		:	Starcrest Commune
	Quest Giver	:   Fawn
	Preceded by	:	None
	Followed by	:	None
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
    UpdateQuestZone(Quest,"Antonica")
	AddQuestStepKill(Quest, 1, "I need to kill sand covered crabs to obtain their diatomaceous sand for Fawn's garden.", 5, 90, "She told me that I can probably find what she requires off of various creatures in Antonica. Some diatomaceous sand to add to her soil will help protect her garden, some fish eggs for fertilizer and some seeds to get her started should be a good start.", 113, 120417,120750,121479)
	AddQuestStepKill(Quest, 2, "I need to gather some fish eggs from Coldwind barracuda off the coast of Antonica.", 5, 90, "She told me that I can probably find what she requires off of various creatures in Antonica. Some diatomaceous sand to add to her soil will help protect her garden, some fish eggs for fertilizer and some seeds to get her started should be a good start.", 144, 120081, 121238)
	AddQuestStepKill(Quest, 3, "I need to gather some seeds from the fur of Antonican mammals.", 5, 90, "She told me that I can probably find what she requires off of various creatures in Antonica. Some diatomaceous sand to add to her soil will help protect her garden, some fish eggs for fertilizer and some seeds to get her started should be a good start.", 2314, 120257,120119,120008)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete")

end

function step1_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've managed to gather the sand needed for Fawn's garden.")
	giveitemstoFawn(Quest, QuestGiver, Player)
end

function step2_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've gathered enough fish eggs for Fawn's garden.")
	giveitemstoFawn(Quest, QuestGiver, Player)
	
end

function step3_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've gathered enough seeds for Fawn to use in her garden.")
	giveitemstoFawn(Quest, QuestGiver, Player)
end

function giveitemstoFawn(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,241,1) and QuestStepIsComplete(Player,241,2) and QuestStepIsComplete(Player,241,3) then
    QuestStep4(Quest, QuestGiver, Player)
end
end


function QuestStep4(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I've managed to gather everything for Fawn Starstone's garden.")
	AddQuestStepChat(Quest, 4, "Return to Fawn in Starcrest Commune.", 1, "I need to give these items to Fawn for her garden.", 0, 2530059)
	AddQuestStepCompleteAction(Quest, 4, "quest_complete_gaveitemstoFawn")
end

function quest_complete_gaveitemstoFawn(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've given Fawn the items she needs for her garden.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've given Fawn the items she needs for her garden.")
	UpdateQuestDescription(Quest, "I've gathered the items Fawn needs for her garden. She was so appreciative, she gave me a little gift for my efforts.")
	GiveQuestReward(Quest, Player)
end


function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
    	step1_complete(Quest, QuestGiver, Player)
    elseif Step == 2 then
    	step2_complete(Quest, QuestGiver, Player)
    elseif Step == 3 then
    	step3_complete(Quest, QuestGiver, Player)
    elseif Step == 4 then
    	QuestStep4(Quest, QuestGiver, Player)
        end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Wonderful! Thank you so much.")
	Dialog.AddOption("I'll be back.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end