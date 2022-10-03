--[[
    Script Name    : Quests/IsleofRefuge/removing_the_orc_menace_.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.24 03:09:05
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: Nathinia
        Preceded by: Striking Back at the Goblins
        Followed by: None
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I need to enter the orc cave.", 1, "I must find and enter the lair of the orc leader. His cave should be somewhere on the northeastern part of the island, past the main goblin encampment.", 11, -13.77, 0.00, -3.00, 324)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Good.  Others are planning an attack on the creature.  Go now and aid them with your healing and blessing powers.  They depend on you to keep them alive and well.  Be safe, young priest.  The orc hides in a cave at the far northeast side of the isle.  Find the cave and destroy the beast.")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright013.mp3", 969428761,2830927430)
    Dialog.AddEmote("agree")	
--    PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
    Dialog.AddOption("I will return to you after slaying this beast.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the orc cave.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the orc cave.")

	AddQuestStepKill(Quest, 2, " I need to slay the orc in the cave.", 1, 100, " I need to slay Grimgash the Black, the orc leader that is behind the goblin attacks.", 11, 3240000)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I killed Grimgash the Black.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I killed Grimgash the Black.")

	AddQuestStepChat(Quest, 3, "I need to return to Nathinia to let her know the orc has been removed from power.", 1, "I should tell Nathinia that Grimgash is dead.", 11, 3250014)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I spoke to Nathinia.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I spoke to Nathinia.")

	UpdateQuestDescription(Quest, "I was able to assist in helping remove the orc from power.  In time, the goblins should now stop attacking the outpost and return to a less aggressive nature.  I was awarded a scepter for my part in putting an end to this menace.")
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
