--[[
    Script Name    : Quests/QeynosHarbor/ians_forgetful_family__part_iii.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.16 10:06:23
    Script Purpose : 

        Zone       : QeynosHarbor
        Quest Giver: Ian Cathlan
        Preceded by:  Ian's Forgetful Family - Part II
        Followed by:  Ian's Forgetful Family - Part IV
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Ian's cousin lost his marble collection while running from some defiled knights within Stormhold.", 12, 100, "My cousin lost his marbles (literally) while fighting defiled knights within Stormhold. If you could give him another start on his collection and see if you can find some of the missing ones that would be nice. Also, my brother lost his silverware on the same journey into Stormhold. What an undead crusader would need with silverware I'll never know but you might check them. And lastly, my aunt lost her favorite gaming dice on the same trip after her dice bag was ripped open by the spear of a defiled cavalier. If you could get those back I'll give you the next piece of armor. - Ian", 2919, 150290,150010,150227,150076)
	AddQuestStepKill(Quest, 2, "Ian's brother lost his favorite set of silverware after running from defiled crusaders in Stormhold.", 5, 85, "My cousin lost his marbles (literally) while fighting defiled knights within Stormhold. If you could give him another start on his collection and see if you can find some of the missing ones that would be nice. Also, my brother lost his silverware on the same journey into Stormhold. What an undead crusader would need with silverware I'll never know but you might check them. And lastly, my aunt lost her favorite gaming dice on the same trip after her dice bag was ripped open by the spear of a defiled cavalier. If you could get those back I'll give you the next piece of armor. - Ian", 364,150236,150020,150080)
	AddQuestStepKill(Quest, 3, "Ian's aunt lost her favorite set of gaming dice running from the defiled cavaliers in Stormhold.", 10, 100, "My cousin lost his marbles (literally) while fighting defiled knights within Stormhold. If you could give him another start on his collection and see if you can find some of the missing ones that would be nice. Also, my brother lost his silverware on the same journey into Stormhold. What an undead crusader would need with silverware I'll never know but you might check them. And lastly, my aunt lost her favorite gaming dice on the same trip after her dice bag was ripped open by the spear of a defiled cavalier. If you could get those back I'll give you the next piece of armor. - Ian", 3183,150040,150254)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	UpdateQuestZone(Quest,"Stormhold")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("I wrote it down for you.  At least ya seem to carry things a little better than me nephew, so I trust you won't lose it.  See what you can find.")
	Dialog.AddVoiceover("voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan012.mp3", 1176133948, 2712461164)
	Dialog.AddOption("No problem.  I'll be back when I find him or more of the things.")
	Dialog.Start()
	end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found several of the marbles for Ian's cousin.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, " have found the lost silverware and should return them to Ian.")
    CheckProgress(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found the missing dice.")
    CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5590, 1) and QuestStepIsComplete(Player, 5590, 2) and QuestStepIsComplete(Player, 5590, 3) then
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
