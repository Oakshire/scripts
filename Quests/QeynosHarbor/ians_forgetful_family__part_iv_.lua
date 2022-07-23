--[[
    Script Name    : Quests/QeynosHarbor/ians_forgetful_family__part_iv_.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.16 10:06:32
    Script Purpose : 

        Zone       : QeynosHarbor
        Quest Giver: Ian Cathlan
        Preceded by:  Ian's Forgetful Family - Part III
        Followed by:  Ian's Forgetful Family - Part V
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
    AddQuestStepKill(Quest, 1, "I should try to find Ian's great-grandfather's leather straps on the deathly scarabs in The Crypt of Betrayal.", 25, 100, "My family and I have spent quite a bit of time in the Crypts below Qeynos battling the monsters there.  So we've lost a few things in the process.  I lost my favorite set of arrows but who knows where they have wound up. You'll know them by my name carved into each shaft.  I'm sure some of the restless corpses probably have a few still stuck in them.  My great grandfather lost a good set of leather straps down there ages ago, they are stamped with a four leaf clover.  You might check the scarabs, they may have used some of them as padding for their lairs.  And while nothing was lost can you kill a few of the shrillers down there just because I hate them, thanks. - Ian", 736, 2010013,2010002)
	AddQuestStepKill(Quest, 2, "I should kill several forsaken shrillers for Ian.", 10, 100, "My family and I have spent quite a bit of time in the Crypts below Qeynos battling the monsters there.  So we've lost a few things in the process.  I lost my favorite set of arrows but who knows where they have wound up. You'll know them by my name carved into each shaft.  I'm sure some of the restless corpses probably have a few still stuck in them.  My great grandfather lost a good set of leather straps down there ages ago, they are stamped with a four leaf clover.  You might check the scarabs, they may have used some of them as padding for their lairs.  And while nothing was lost can you kill a few of the shrillers down there just because I hate them, thanks. - Ian", 140, 2010003,2010035,2010026)
    AddQuestStepKill(Quest, 3, "Ian would like the arrows back he lost in The Crypt of Betrayal, he's certain the restless corpses still have them stuck in them.", 15, 100, "My family and I have spent quite a bit of time in the Crypts below Qeynos battling the monsters there.  So we've lost a few things in the process.  I lost my favorite set of arrows but who knows where they have wound up. You'll know them by my name carved into each shaft.  I'm sure some of the restless corpses probably have a few still stuck in them.  My great grandfather lost a good set of leather straps down there ages ago, they are stamped with a four leaf clover.  You might check the scarabs, they may have used some of them as padding for their lairs.  And while nothing was lost can you kill a few of the shrillers down there just because I hate them, thanks. - Ian", 364, 2010028)	
    AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
    UpdateQuestZone(Quest,"The Crypt of Betrayal")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("When I was younger, I picked up after my family. I got used to it. After a while, I started to see how things got lost. Here's a list of directions for ya.  Good luck.")
	Dialog.AddVoiceover("voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan013.mp3", 3987566922, 629145387)
	Dialog.AddOption("Um, sure.  I'll be back.")
	Dialog.Start()
	end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have found Ian's great-grandfather's leather straps.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have recovered Ian's lost arrows.")
    CheckProgress(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found the spellbook.")
    CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5591, 1) and QuestStepIsComplete(Player, 5591, 2) and QuestStepIsComplete(Player, 5591, 3) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I've recovered everything Ian needed, I should return to him.")
    UpdateQuestZone(Quest,"Qeynos Harbor")
	AddQuestStepChat(Quest, 4, "I should return to Ian in Qeynos Harbor.", 1, 100, "I need to speak to Ian Cathlan in the Qeynos Harbor.", 11,2210084)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have returned to Ian in Qeynos Harbor.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Ian in Qeynos Harbor.")

	UpdateQuestDescription(Quest, "Ian has rewarded me with armor for collecting a few of his lost family's possessions.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
