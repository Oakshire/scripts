--[[
    Script Name    : Quests/QeynosHarbor/ians_forgetful_family__part_ii.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.16 03:06:11
    Script Purpose : 

        Zone       : QeynosHarbor
        Quest Giver: Ian Cathlan
        Preceded by:  Ian's Forgetful Family - Part I
        Followed by:  Ian's Forgetful Family - Part III
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I should try to find any arrows I can find near the giant kodiaks in Antonica.", 25, 100, "My great grandmother had her spellbook stolen years ago but it seems that a gnoll by the name of Grolven Chiptooth was seen with a book that looked just like it. Also, my nephew Terrin lost his favorite sash when he was in Blackburrow fighting blightfang broodtenders. I know it's probably not in one piece anymore but it has sentimental value to him. My uncle Acrius was good with a bow and always seemed to lose his arrows. Lately been running short on money and could use some of his old ones recovered. He used to kill giant kodiaks in his spare time, if you could look up near where they roam and see if you can't find a few I'd be grateful. - Ian", 2919, 120140,121284)
	AddQuestStepKill(Quest, 2, "I should attempt to find the tattered sash pieces of Ian's nephew Terrin. He lost it when fighting blightfang broodtender spiders in Blackburrow.", 4, 80, "My great grandmother had her spellbook stolen years ago but it seems that a gnoll by the name of Grolven Chiptooth was seen with a book that looked just like it. Also, my nephew Terrin lost his favorite sash when he was in Blackburrow fighting blightfang broodtenders. I know it's probably not in one piece anymore but it has sentimental value to him. My uncle Acrius was good with a bow and always seemed to lose his arrows. Lately been running short on money and could use some of his old ones recovered. He used to kill giant kodiaks in his spare time, if you could look up near where they roam and see if you can't find a few I'd be grateful. - Ian", 364,170006)
	AddQuestStepKill(Quest, 3, "I should see if I can find Grolven Chiptooth.  Ian thinks this gnoll has the old spellbook that once belonged to his great grandmother.", 1, 100, "My great grandmother had her spellbook stolen years ago but it seems that a gnoll by the name of Grolven Chiptooth was seen with a book that looked just like it. Also, my nephew Terrin lost his favorite sash when he was in Blackburrow fighting blightfang broodtenders. I know it's probably not in one piece anymore but it has sentimental value to him. My uncle Acrius was good with a bow and always seemed to lose his arrows. Lately been running short on money and could use some of his old ones recovered. He used to kill giant kodiaks in his spare time, if you could look up near where they roam and see if you can't find a few I'd be grateful. - Ian", 3183,121488)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
    UpdateQuestZone(Quest,"Multiple Zones")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("I wrote it down for you.  You're not nearly so addle-brained as my aunt Phyllis, so I trust you won't lose it.  See what you can find.")
	Dialog.AddVoiceover("voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan011.mp3", 1580781172, 297339745)
	Dialog.AddOption("Thank you, Ian.  ")
	Dialog.Start()
	end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found all of the missing gem stones for Ian.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found several arrows stuck in the zombies in the Thundering Steppes.")
    CheckProgress(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found the spellbook.")
    CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5589, 1) and QuestStepIsComplete(Player, 5589, 2) and QuestStepIsComplete(Player, 5589, 3) then
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
