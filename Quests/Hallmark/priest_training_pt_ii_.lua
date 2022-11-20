--[[
    Script Name    : Quests/Hallmark/priest_training_pt_ii_.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.19 05:11:41
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: Heirophant Aldalad
        Preceded by: Priest Training, pt I
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill five toxic bog slugs in the Peat Bog.", 5, 100, "Aldalad has directed me to the Bog to help whittle down five bog slugs.", 611, 8290031	)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Druids assist in maintaining the Balance.  When harmony has been breached, the druid can tell instantly.  For example, if you travel to the Bog, you will find that some creatures are thriving at the expense of all others.  It is out of balance.  If you wish to help the druids in their work, go to the Bog and slay five Carnivorous Slugs.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad015.mp3", 3124149580, 1197890726)
    PlayFlavor(QuestGiver, "", "", "thanks", 0, 0, Player)
    Dialog.AddOption("Ah, I knew you had a task for me!  All right.  I'll return when I've killed five carnivorous slugs.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed five toxic bog slugs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed five bog slugs.  Hopefully this will help to balance the bog's population.")

	AddQuestStepChat(Quest, 2, "I need to speak with Aldalad", 1, "I should let Aldalad know that the slugs' numbers have been reduced", 11, 	2220484)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Aldalad")
	UpdateQuestTaskGroupDescription(Quest, 2, "Aldalad has commended me for helping take part of nature's cycles")

	AddQuestStepChat(Quest, 3, "I need to help the soldier Homrie near the Claymore in Antonica.", 1, "Aldalad has charged me with helping the Qeynosian soldiers outside of the city", 11, 120411)
	AddQuestStepChat(Quest, 4, "I need to help the soldier Selennia near the two southern guard towers in Antonica.", 1, "Aldalad has charged me with helping the Qeynosian soldiers outside of the city", 11, 	120269,121378	)
	AddQuestStepChat(Quest, 5, "I need to help the soldier Pellenos near the two southern guard towers in Antonica.", 1, "Aldalad has charged me with helping the Qeynosian soldiers outside of the city", 11,	120276,121385)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've cured Homrie of poison.")
 QuestCheck(Quest, QuestGiver, Player)

end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've saved the life of Selennia.")
 QuestCheck(Quest, QuestGiver, Player)

end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've helped to heal the mental wounds of Pellenos.")
 QuestCheck(Quest, QuestGiver, Player)
end

function  QuestCheck(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,5773,3) and QuestStepIsComplete(Player,5773,4) and QuestStepIsComplete(Player,5773,5) then
	UpdateQuestTaskGroupDescription(Quest, 3, "I've healed the soldiers, but should report to Aldalad as to what befell them")

	AddQuestStepChat(Quest, 6, "I need to speak with Aldalad", 1, "I need to report to Aldalad at once", 11, 	2220484)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I've spoken with Aldalad")
	UpdateQuestTaskGroupDescription(Quest, 4, "Aldalad told me all that he can and suggested I make a spiritual choice.")

	UpdateQuestDescription(Quest, "I have listened to all that the Hierophant has to offer.  Looking in my heart, I know that there is only one way for me to proceed.  From hereon, I will follow my chosen path to spirituality and never waver from where it leads me.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end