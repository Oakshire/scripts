--[[
    Script Name    : Quests/Hallmark/fighter_training_pt_i.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.07 03:12:56
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: Master at Arms Dagorel
        Preceded by: None
        Followed by: Fighter Training, pt II
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill five white spiderlings in the caves.", 5, 100, "I need to travel to the Caves and kill five white spiderlings like a warrior would.", 91, 8260002)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Och!  A bit eager, are we?  You're off to a good start then, you are. A warrior takes the bull by the horns! Let's give you a taste, shall we?  The Council needs help exterminatin' a massive hatching of Ice Spiders in the caves. Go to the caves and destroy some of the spiders. After you get rid of the critters, head back my way.")
    PlayFlavor(QuestGiver, "", "", "wince", 0, 0, Player)
    Dialog.AddOption("Right. I'll be back once I've dealt with these spiders.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed five white spiderlings in the caves.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed the spiders and made the miner's job a bit easier.")

	AddQuestStepChat(Quest, 2, "I need to speak with Dagorel in South Qeynos.", 1, "I should let Master-at-Arms Dagorel know the miners are safe.", 11, 2310377)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Dagorel in South Qeynos.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Dagorel approved of the way I handled the situation.")

	AddQuestStepChat(Quest, 3, "I need to speak with Luvile in Starcrest Commune and ask for brawling tips", 1, "Master-at-Arms Dagorel has directed me to a couple of people for tips on brawling", 11, 2340042)
	AddQuestStepChat(Quest, 4, "I need to speak with Hargan in Graystone Yard for brawling tips", 1, "Master-at-Arms Dagorel has directed me to a couple of people for tips on brawling", 11, 2350031)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've received tips from Luvile")
 QuestCheck(Quest, QuestGiver, Player)

end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've received tips from Hargan")
 QuestCheck(Quest, QuestGiver, Player)
end

function  QuestCheck(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,5783,3) and QuestStepIsComplete(Player,5783,4) then
	UpdateQuestTaskGroupDescription(Quest, 3, "I've been given tips on brawling... and a little more, too.")

	AddQuestStepChat(Quest, 5, "I need to speak with Dagorel in South Qeynos.", 1, "I should let Dagorel know I've learned my lesson... in more ways than one.", 11, 2310377)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I've spoken with Dagorel in South Qeynos.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've been told I did well in learning about brawlers.")

	UpdateQuestDescription(Quest, "Dagorel, Master-at-Arms of the Council, has shown me two different ways to focus on fighting.  So far I've learned how a warrior and a brawler handle things.  Because my brawler tips got out of hand, Dagorel agreed to show me the last way when I've taken time to recover.")
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