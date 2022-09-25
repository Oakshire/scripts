--[[
    Script Name    : Quests/IsleofRefuge/attack_on_the_orc_leader.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.24 04:09:18
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: Mizan
        Preceded by: Striking Back at the Golbins
        Followed by: None
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I need to enter the orc cave.", 1, "I must find my way through the goblin camps and enter the orc leader's cave on the northeastern part of the island.", 11,-13.77, 0.00, -3.00, 324)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Fantastic!  Your magical skills are vital in successfully attacking this evil orc.  Wield your magic arts and destroy the creature that commands the attacks against our settlement!  The orc resides in a cave on the northeast side of the island.  Find the cave and slay the beast.")
	Dialog.AddVoiceover("voiceover/english/mizan_vaeoulin/tutorial_island02/mizanvaeoulin013.mp3", 703001455, 1456004072)
    PlayFlavor(QuestGiver, "", "", "smile", 0, 0, Player)
    Dialog.AddOption("I'll return once the deed is done.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I entered the orc's cave.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I entered the orc's cave.")

	AddQuestStepKill(Quest, 2, "I need to slay the orc leader.", 1, 100, "I need to slay Grimgash the Black, the orc that is behind the goblin attacks.", 11, 3240000)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I defeated the orc leader.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I help slay the self appointed king of the orcs.")

	AddQuestStepChat(Quest, 3, "I should speak to Mizan.", 1, "I need to return to Mizan to let him know the orc has been removed from power.", 11, 3250057)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I spoke with Mizan.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I spoke with Mizan.")

	UpdateQuestDescription(Quest, "The orc leader is now dead.  Hopefully with his death the goblin attacks will stop and the goblins will retreat back from the outposts walls.  Mizan presented me with a staff for all the work I have done for him and the Far Seas settlement.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
