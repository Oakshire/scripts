--[[
    Script Name    : Quests/QeynosHarbor/ians_forgetful_family__part_v.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.16 10:06:54
    Script Purpose : 

        Zone       : QeynosHarbor
        Quest Giver: Ian Cathlan
        Preceded by:  Ian's Forgetful Family - Part III
        Followed by:  Ian's Forgetful Family - Part V
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Ian thinks his gnomish friend Torzig lost his poker chips the last time they ventured into the Thundering Steppes.  Some of the unearthed settlers must have picked them up.", 5, 80, "To continue the list of things lost by my family.  My cousin Terra lost her lucky coin collection when we were fighting some Sabertooth looters if you could look around them in the Thundering Steppes that would be nice of you.  My old gnomish friend Torzig dropped his poker chips when we were running for our lives from a huge mob undead villagers, all kinds were in that heap so I'm sure several of them must have picked up a chip or two.  I lost my set of keys when fighting corpse feeders.  If you could look on them while you're in the Steppes I'd be grateful.  I still can't open my sealed strongbox, made it too good I guess.  Oh, and during a titanic battle in the dry riverbed with a horde of undead a friend lost his favorite sword Bonechipper.  It's got the name on the blade so you can identify it. - Ian", 2302, 2490150)
	AddQuestStepKill(Quest, 2, "Ian lost his keyring after hunting corpse feeders they may still hold his keys.", 10, 100, "To continue the list of things lost by my family.  My cousin Terra lost her lucky coin collection when we were fighting some Sabertooth looters if you could look around them in the Thundering Steppes that would be nice of you.  My old gnomish friend Torzig dropped his poker chips when we were running for our lives from a huge mob undead villagers, all kinds were in that heap so I'm sure several of them must have picked up a chip or two.  I lost my set of keys when fighting corpse feeders.  If you could look on them while you're in the Steppes I'd be grateful.  I still can't open my sealed strongbox, made it too good I guess.  Oh, and during a titanic battle in the dry riverbed with a horde of undead a friend lost his favorite sword Bonechipper.  It's got the name on the blade so you can identify it. - Ian", 2170, 2490128)
	AddQuestStepKill(Quest, 3, "Ian's cousin Terra lost her lucky coin collection when fighting Sabertooth looters in the Thundering Steppes.", 12, 100, "To continue the list of things lost by my family.  My cousin Terra lost her lucky coin collection when we were fighting some Sabertooth looters if you could look around them in the Thundering Steppes that would be nice of you.  My old gnomish friend Torzig dropped his poker chips when we were running for our lives from a huge mob undead villagers, all kinds were in that heap so I'm sure several of them must have picked up a chip or two.  I lost my set of keys when fighting corpse feeders.  If you could look on them while you're in the Steppes I'd be grateful.  I still can't open my sealed strongbox, made it too good I guess.  Oh, and during a titanic battle in the dry riverbed with a horde of undead a friend lost his favorite sword Bonechipper.  It's got the name on the blade so you can identify it. - Ian", 2165, 2490313,2490311)
	AddQuestStepKill(Quest, 4, "An old friend of Ian's lost his sword &quot;Bonechipper&quot; in a large battle near the dry riverbed in the Thundering Steppes.", 1, 20, "To continue the list of things lost by my family.  My cousin Terra lost her lucky coin collection when we were fighting some Sabertooth looters if you could look around them in the Thundering Steppes that would be nice of you.  My old gnomish friend Torzig dropped his poker chips when we were running for our lives from a huge mob undead villagers, all kinds were in that heap so I'm sure several of them must have picked up a chip or two.  I lost my set of keys when fighting corpse feeders.  If you could look on them while you're in the Steppes I'd be grateful.  I still can't open my sealed strongbox, made it too good I guess.  Oh, and during a titanic battle in the dry riverbed with a horde of undead a friend lost his favorite sword Bonechipper.  It's got the name on the blade so you can identify it. - Ian", 617, 2490119,2490102,2490098,2490095,2490121,2490120,2490123)
    UpdateQuestZone(Quest,"Thundering Steppes")
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("It takes a keen mind, a little insanity, and lots of practice.  Let me write down where you can pick up everything else that was lost.  I have high hopes that we'll find everything!")
	Dialog.AddVoiceover("voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan014.mp3", 1824092303, 3032162990)
	Dialog.AddOption("I'll be back after seeing what else I can find.")
	Dialog.Start()
	end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have found the missing poker chips.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found Ian's lost keys")
    CheckProgress(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found what looks to be Terra's lost lucky coin collection.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have found Bonechipper.")
    CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5592, 1) and QuestStepIsComplete(Player, 5592, 2) and QuestStepIsComplete(Player, 5592, 3) and QuestStepIsComplete(Player, 5592, 4) then
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
        Step4Complete(Quest, QuestGiver, Player)
    elseif Step == 5 then
		QuestComplete(Quest, QuestGiver, Player)
		end
end
