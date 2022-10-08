--[[
    Script Name    : Quests/NorthQeynos/flight_of_the_sage_.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.15 03:05:37
    Script Purpose :

        Zone       : NorthQeynos
        Quest Giver: Scholar Demini
        Preceded by: Never Judge A Book By It's Cover
        Followed by: None
--]]

require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to run to the Bridge Keep to see if the Sage of Ages is there.", 6, "If I'm going to track down the Sage of Ages in time, I should see if he was wise enough to head for the safety of the Bridge Keep in the Thundering Steppes.", 11, 201, 1, -226)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	PlayFlavor(QuestGiver,"","","bow",0,0,Player)
    Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Oh, thank you so much, friend!  I'm not too familiar with the Steppes, but I do remember being told that if I get in trouble while I'm there, I should run straight for the Bridge Keep.  Maybe the Sage knew to do the same thing?")
	Dialog.AddOption("I'll check there first, then.  Wish me luck!")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've made it to the Bridge Keep, but found no trace of the Sage of Ages.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found no trace of the Sage of Ages at the Bridge Keep.  I did however see a number of creatures milling about in the ravine below.")

	AddQuestStepKill(Quest, 2, "I need to kill the stronger undead in the area for clues to the Sages whereabouts.", 1, 60, "Perhaps some of the creatures contain clues as to the whereabouts of the Sage of Ages.  This may be my last chance to find him.", 75, 2490218,2490155,2490356,2490136)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found a scholarly tool on one of the undead.")

	AddQuestStepKill(Quest, 3, "I need to kill the stronger hawks in the area for clues to the Sages whereabouts.", 1, 60, "Perhaps some of the creatures contain clues as to the whereabouts of the Sage of Ages.  This may be my last chance to find him.", 75, 2490183)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found a scholarly tool on one of the hawks.")

	AddQuestStepKill(Quest, 4, "I need to kill the stronger beetles in the area for clues to the Sages whereabouts.", 1, 60, "Perhaps some of the creatures contain clues as to the whereabouts of the Sage of Ages.  This may be my last chance to find him.", 75, 2490050)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I found a scholarly tool on one of the beetles.")

	AddQuestStepKill(Quest, 5, "I need to kill the stronger deer in the area for clues to the Sages whereabouts.", 1, 60, "Perhaps some of the creatures contain clues as to the whereabouts of the Sage of Ages.  This may be my last chance to find him.", 75, 2490052)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I found a scholarly tool on one of the deer.")

	AddQuestStepKill(Quest, 6, "I need to kill the stronger snakes in the area for clues to the Sages whereabouts.", 1, 60, "Perhaps some of the creatures contain clues as to the whereabouts of the Sage of Ages.  This may be my last chance to find him.", 75, 2490110,2490048)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I found a scholarly tool on one of the snakes.")

	AddQuestStepKill(Quest, 7, "I need to kill the stronger crabs in the area for clues to the Sages whereabouts.", 1, 60, "Perhaps some of the creatures contain clues as to the whereabouts of the Sage of Ages.  This may be my last chance to find him.", 397,2490128,2490007)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I found a torn pouch on one of the crabs.")

	AddQuestStepKill(Quest, 8, "I need to kill the stronger sirens in the area for clues to the Sages whereabouts.", 1, 100, "Perhaps some of the creatures contain clues as to the whereabouts of the Sage of Ages.  This may be my last chance to find him.", 402, 2490300,2490245)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I found a torn backpack on one of the sirens.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've found what looks like scholarly objects on these creatures.  It's as if the Sage dropped everything in hopes of eluding his predators.  From where I found the objects, it looks as if he was heading to the docks in the Steppes.")

	AddQuestStepLocation(Quest, 9, "I need to search the barrels and crates on the dock for some sign of the Sage.", 1, "If I don't find the Sage of Ages down by the docks, then that tells me he made it safely away from the Steppes.  Maybe I can find one final clue of his ultimate fate.", 11, 2490539)
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
end

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I've found a ship's receipt chit.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've found a receipt chit in a barrel on the docks.  It's made out to a &quot;SoA&quot; and signed with a letter &quot;D&quot;.  That Sage sure is a clever fellow.")

	AddQuestStepChat(Quest, 10, "I need to speak to Demini in North Qeynos.", 1, "I should return to Demini and let him know that the Sage was able to make it to safety.  I'm not too sure he'll be too happy to learn that he won't be meeting the Sage, though.", 11, 2220086	)
	AddQuestStepCompleteAction(Quest, 10, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 10, "I've spoken with Demini.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've let Demini know what happened to the Sage of Ages.")

	UpdateQuestDescription(Quest, "The Sage of Ages has managed to book passage on a ship and set sail across the ocean.  Though I'm glad he made it safely away from the perils he faced, I'm rather disappointed I never got a chance to meet him.")
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
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step8Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		Step9Complete(Quest, QuestGiver, Player)
	elseif Step == 10 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
