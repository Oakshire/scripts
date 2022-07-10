--[[
    Script Name    : Quests/TheElddarGrove/gildas_requests__part_v.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.08 10:07:14
    Script Purpose : Qeynos Cloth Armorquest 5

        Zone       : TheElddarGrove
        Quest Giver: Gildas Cedartree
        Preceded by: Gildas' Requests - Part IV
        Followed by: Gildas' Requests - Part VI
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must destroy animated scarecrows within the Thundering Steppes.", 15, 100, "From what you've brought me so far it seems as if the undead and gelatinous creatures within Stormhold bear only minor connections to those found under Qeynos; this is quite a relief.  This time I have a list of creatures that are posing problems to Qeynos in the Thundering Steppes.  Some more powerful animated scarecrows have recently shown up in the Thundering Steppes. I need you burn them to ash.  The steppe beetles are getting out of control with their numbers, I need you to thin them out a little.  Also, the corpse feeders are becoming too numerous and need to be culled.  And finally, the fey rock heaps are causing problems with our outer lands exploration groups, they need to be dealt with.  - Gildas", 611,2490321,2490843)
	AddQuestStepKill(Quest, 2, "I must destroy steppe beetles within the Thundering Steppes.", 25, 100, "From what you've brought me so far it seems as if the undead and gelatinous creatures within Stormhold bear only minor connections to those found under Qeynos; this is quite a relief.  This time I have a list of creatures that are posing problems to Qeynos in the Thundering Steppes.  Some more powerful animated scarecrows have recently shown up in the Thundering Steppes. I need you burn them to ash.  The steppe beetles are getting out of control with their numbers, I need you to thin them out a little.  Also, the corpse feeders are becoming too numerous and need to be culled.  And finally, the fey rock heaps are causing problems with our outer lands exploration groups, they need to be dealt with.  - Gildas", 1806, 2490050)	
	AddQuestStepKill(Quest, 3, "I must thin the number of corpse feeders within the Thundering Steppes.", 12, 100, "From what you've brought me so far it seems as if the undead and gelatinous creatures within Stormhold bear only minor connections to those found under Qeynos; this is quite a relief.  This time I have a list of creatures that are posing problems to Qeynos in the Thundering Steppes.  Some more powerful animated scarecrows have recently shown up in the Thundering Steppes. I need you burn them to ash.  The steppe beetles are getting out of control with their numbers, I need you to thin them out a little.  Also, the corpse feeders are becoming too numerous and need to be culled.  And finally, the fey rock heaps are causing problems with our outer lands exploration groups, they need to be dealt with.  - Gildas", 77, 2490128)	
	AddQuestStepKill(Quest, 4, "I must destroy some of the fey rock heaps that threaten the Qeynos exploration patrols.", 6, 100, "From what you've brought me so far it seems as if the undead and gelatinous creatures within Stormhold bear only minor connections to those found under Qeynos; this is quite a relief.  This time I have a list of creatures that are posing problems to Qeynos in the Thundering Steppes.  Some more powerful animated scarecrows have recently shown up in the Thundering Steppes. I need you burn them to ash.  The steppe beetles are getting out of control with their numbers, I need you to thin them out a little.  Also, the corpse feeders are becoming too numerous and need to be culled.  And finally, the fey rock heaps are causing problems with our outer lands exploration groups, they need to be dealt with.  - Gildas", 1125, 2490270)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
    UpdateQuestZone(Quest,"Thundering Steppes")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
    Dialog.AddDialog( "I knew you would return. If only all Qeynosians were as dedicated as you. My friend is working on your leggings. If you take this note and start immediately, your leggings should be ready by the time you return. Good luck on your journey!")
--	Dialog.AddVoiceover("voiceover/english/selwyn_oakheart/qey_south/quests/selwyn_oakheart/selwyn001.mp3", 390832885, 49061382)
	PlayFlavor(QuestGiver,"","","thanks", 0, 0, Player)
	Dialog.AddOption( "Thank you Gildas.  I'll see you as soon as I'm done.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have destroyed animated scarecrows within the Thundering Steppes.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have destroyed steppe beetles within the Thundering Steppes.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have destroyed some of the fey rock heaps that threaten the Qeynos exploration patrols.")
    CheckProgress(Quest, QuestGiver, Player)

end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have destroyed Celeg Ixuri.")
    CheckProgress(Quest, QuestGiver, Player)
end	
	

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5616, 1) and QuestStepIsComplete(Player, 5616, 2) and QuestStepIsComplete(Player, 5616, 3) and QuestStepIsComplete(Player, 5616, 4) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I have completed all that Gildas has asked of me. I should return to him.")
    UpdateQuestZone(Quest,"The Elddar Grove")
	AddQuestStepChat(Quest, 5, "I should return to Gildas in The Elddar Grove.", 1, "I need to speak to Gildas Cedartree in The Elddar Grove.", 11, 2070033)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end
end	


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "	I have returned to Gildas in The Elddar Grove.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Gildas Cedartree in The Elddar Grove.")

	UpdateQuestDescription(Quest, "Gildas has rewarded me with a silver touched leggings.")
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


