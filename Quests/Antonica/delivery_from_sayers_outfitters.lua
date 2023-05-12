--[[
    Script Name    : Quests/Antonica/delivery_from_sayers_outfitters.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.11 06:05:32
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: Battle with the Timberclaws
        Followed by: Vengeance for Marlea Sayer
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to Merchant Duffy near the gates of Qeynos. ", 1, "I must go towards the gates of Qeynos in Antonica and deliver a shipment to a merchant called Duffy.", 11, 120086)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("I have a list of customers that just can't make it to Sayer's. Could you deliver their goods to them, and save me the trouble of sending one of my merchants and losing business?")
	Dialog.AddVoiceover("voiceover/english/sighard_sayer/antonica/sighardsayer003.mp3", 1632310512, 2700305313)
	Dialog.AddOption("Consider it done, Mr. Sayer. ")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Spoke to Duffy.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I delivered a shipment to a merchant called Duffy.")

	AddQuestStepChat(Quest, 2, "Speak to Lord Quinn at the Keep of the Ardent Needle.", 1, "I must follow the great north road in Antonica to deliver a shipment to Lord Quinn at the Keep of the Ardent Needle.", 11, 120200)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Spoke to Lord Quinn Clothspinner. ")
	UpdateQuestTaskGroupDescription(Quest, 2, "I made it to the keep of the Ardent Needle and found Lord Quinn.")

	AddQuestStep(Quest, 3, "Inspect Caltorsis Keep for the needles.", 1, 100, "Lord Quinn wants me to find something called Nerissa's Needles in the ruins of Caltorsis east of the Keep of the Ardent Needle.", 2176)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found Nerissa Clothpinner's sewing kit. ")
	UpdateQuestTaskGroupDescription(Quest, 3, "I found a sewing kit called Nerissa's Needles in the ruins of Caltorsis.")

	AddQuestStepChat(Quest, 4, "Return to Lord Quinn Clothspinner.", 1, "I must take the sewing kit to Lord Quinn at the Keep of the Ardent Needle.", 648, 120200)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "Gave Nerissa's sewing kit to Lord Quinn Clothspinner.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I took the sewing kit to Lord Quinn at the Keep of the Ardent Needle.")

	AddQuestStepChat(Quest, 5, "Speak to Sighard at Sayer's Outfitters.", 1, "I must return to Sighard Sayer at Sayer's Outfitters. I will give him the payments for goods delivered.", 11, 120283)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "Spoke to Sighard")
	UpdateQuestTaskGroupDescription(Quest, 5, "I gave the payments to Sighard Sayer.")

	UpdateQuestDescription(Quest, "After a long journey through the countryside of Antonica I finally delivered both shipments to their clients. Sayer paid me well for this deed. ")
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