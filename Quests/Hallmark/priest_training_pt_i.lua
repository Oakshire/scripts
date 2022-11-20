--[[
    Script Name    : Quests/Hallmark/priest_training_pt_i.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.19 04:11:58
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: Heirophant Aldalad
        Preceded by: None
        Followed by: Priest Training, pt II
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to heal the fletcher, Nightbow, in the Elddar Grove.", 1, "Aldalad has suggested that I pray for divine healing to heal some people that have injuries.", 11, 2070011)
	AddQuestStepChat(Quest, 2, "I need to heal the carpenter in Graystone.", 1, "Aldalad has suggested that I pray for divine healing to heal some people that have injuries.", 11, 2350030)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Such devotion would make me glad indeed!  Take your special healing gifts to the people and restore their faith!  People are suffering right here in Qeynos.  To begin your work, seek out a fletcher named Armsdealer Nightbow in the Elddar, and the carpenter Jorgie Icearmor down by the harbor.  One is wounded; the other is ill.  Heal them, and return to me.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad005.mp3", 257418287, 4158083367)
    PlayFlavor(QuestGiver, "", "", "thanks", 0, 0, Player)
    Dialog.AddOption("A fletcher is someone who makes bows and arrows, right? I'll find Nightbow and Jorgie, and heal them right away.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have healed Nightbow.")

 QuestCheck(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have healed Jorgie.")
 QuestCheck(Quest, QuestGiver, Player)
end

function  QuestCheck(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,5772,1) and QuestStepIsComplete(Player,5772,2) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I've healed both of Nightbow and Jorgie of their ailments.")
	AddQuestStepChat(Quest, 3, "I need to speak with Aldalad in North Qeynos.", 1, "I should let Aldalad know that through divine intervention, they will be fine now.", 11, 2220484)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	end
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've spoken with Aldalad.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Aldalad was impressed at the divine potency that I wield.")

	AddQuestStepKill(Quest, 4, "I must kill five Oakmyst fairies.", 5, 100, "Aldalad has directed me to the Oakmyst Forest to put five Oakmyst fairies to rest.", 110, 8300048,8300049,8300050,8300014,8300015,8300016)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have killed some Oakmyst fairies")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've sent the Oakmyst spirits back to the Gray Fields.")

	AddQuestStepChat(Quest, 5, "I need to speak with Aldalad in North Qeynos.", 1, "I should let Aldalad know that the spirits will no longer bother the living", 11, 2220484)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I've spoken with Aldalad.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've let Aldalad know that the spirits are no longer haunting the forest.")

	UpdateQuestDescription(Quest, "Hierophant Aldalad has shown me the difference between a cleric and a shaman.  I have learned that faith comes from many different avenues.  He has hinted at the fact there are even more paths to learn of, but wishes for me to learn from my experiences before I continue seeing more.")
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
