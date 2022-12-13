--[[
    Script Name    : Quests/Hallmark/fighter_training_pt_ii.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.07 03:12:36
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: Master at Arms Dagorel
        Preceded by: Fighter Training, pt I
        Followed by: Path of the (CLASS)
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Sir Laughlin in North Qeynos", 1, "Dagorel has asked me to inspire three of the guards in Qeynos", 11, 2220024)
	AddQuestStepChat(Quest, 2, "I need to speak with Lieutenant Ilgar in South Qeynos.", 1, "Dagorel has asked me to inspire three of the guards in Qeynos", 11,2310017)
	AddQuestStepChat(Quest, 3, "I need to speak with Squire Moorford in Qeynos Harbor.", 1, "Dagorel has asked me to inspire three of the guards in Qeynos", 11, 2210118)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("I want you to remind a few of the Qeynos guards that we appreciate what they do for the city.  Go find some of the boys posted around town, and remind them why they work so hard. I'll stop yappin' your ear off and write some of the guards' names in your journal.")
    PlayFlavor(QuestGiver, "", "", "smile", 0, 0, Player)
    Dialog.AddOption("Sounds easy enough. I'll let you know once I've met with the other guards.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've spoken with Sir Laughlin")
 QuestCheck(Quest, QuestGiver, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Lieutenant Ilgar.")
 QuestCheck(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've spoken with Squire Moorford.")
 QuestCheck(Quest, QuestGiver, Player)
end

function  QuestCheck(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,5788,1) and QuestStepIsComplete(Player,5788,2) and QuestStepIsComplete(Player,5788,3) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I've reminded some of the guards why they are fighting for Qeynos")

	AddQuestStepChat(Quest, 4, "I need to speak with Dagorel", 1, "I should return to Dagorel and let him know that I spoke with the soldiers", 11, 2310377)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've spoken with Dagorel")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've let Dagorel know that I spoke with the soldiers")

	AddQuestStepKillByRace(Quest, 5, "I must kill one gnoll", 1, 100, "Dagorel has charged me with finding and killing a Darkpaw Gnoll Pup in Antonica", 1220, 298)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have killed one gnoll")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've killed the gnoll pup")

	AddQuestStepChat(Quest, 6, "I need to speak with Dagorel", 1, "I should let Dagorel know that the Gnoll Pup is dead", 11, 2310377)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I've spoken with Dagorel")
	UpdateQuestTaskGroupDescription(Quest, 4, "Dagorel has agreed with the choice that I've made in life")

	UpdateQuestDescription(Quest, "Dagorel, the Master-at-Arms of Qeynos, has shown me different fighting styles.  Thanks to his training, I've decided which way to direct my future training.  From hereon, I'm no longer just a fighter.  In time, people will associate my name with my style of fighting.")
	GiveQuestReward(Quest, Player)
end
--
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
