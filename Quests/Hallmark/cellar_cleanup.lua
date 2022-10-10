--[[
    Script Name    : Quests/Hallmark/cellar_cleanup.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.22 03:09:42
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: Assistant Dreak (3250167)
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to move the table to a better location.", 1, 100, "I need to straighten up the mess in Mizan's Cellar made by Dreak's mishap.", 568)
	AddQuestStep(Quest, 2, "I need to move the chair to a better location.", 1, 100, "I need to straighten up the mess in Mizan's Cellar made by Dreak's mishap.", 560)
	AddQuestStep(Quest, 3, "I need to get rid of the burned barrel.", 1, 100, "I need to straighten up the mess in Mizan's Cellar made by Dreak's mishap.", 915)
	AddQuestStep(Quest, 4, "I need to pick up the mirror and put it back on the wall.", 1, 100, "I need to straighten up the mess in Mizan's Cellar made by Dreak's mishap.", 995)
	AddQuestStep(Quest, 5, "I need to find a better place for the bed.", 1, 100, "I need to straighten up the mess in Mizan's Cellar made by Dreak's mishap.", 567)
	AddQuestStep(Quest, 6, "I need to clean up the crushed rock by harvesting it.", 1, 100, "I need to straighten up the mess in Mizan's Cellar made by Dreak's mishap.", 1087)
	AddQuestStep(Quest, 7, "I need to clean up the fallen log by harvesting it.", 1, 100, "I need to straighten up the mess in Mizan's Cellar made by Dreak's mishap.", 197)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
    UpdateQuestZone(Quest,"Mizan's Cellar")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Wonderful!  Here's a list of instructions on what needs to be done down there.  Just go through the cellar door here, and you should find everything you need.  Just come back and see me once you've got everything straightened out.  Oh, and thanks again!")
	Dialog.AddVoiceover("voiceover/english/assistant_dreak/tutorial_island02/assistant_dreak004.mp3",246435936,3107615538)
    PlayFlavor(QuestGiver,"","","smile",0,0, Player)
	Dialog.AddOption("Very well then.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found a better location to move the table to.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've moved the chair to a better location.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I got rid of the burned barrel.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I put the mirror back on the wall.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I moved the bed to a better location")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I harvested the crushed rock.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I harvested the fallen log.")
    CheckProgress(Quest, QuestGiver, Player)
end	

function CheckProgress(Quest, QuestGiver, Player)

    if QuestStepIsComplete(Player, 5749, 1) and QuestStepIsComplete(Player, 5749, 2) and QuestStepIsComplete(Player, 5749, 3) and QuestStepIsComplete(Player, 5749, 4) and QuestStepIsComplete(Player, 5749, 5) and QuestStepIsComplete(Player, 5749, 6) and QuestStepIsComplete(Player, 5749, 7) then
	
	UpdateQuestTaskGroupDescription(Quest, 1, "I was able to straighten up the mess that Dreak left in the cellar.")
    UpdateQuestZone(Quest,"Isle of Refuge")

	AddQuestStepChat(Quest, 8, "I need to speak with Assistant Dreak.", 1, "I should go speak with Assistant Dreak about the cellar cleanup.", 11, 3250167)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
    end
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I spoke with Assistant Dreak.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I told Assistant Dreak that the cellar is clean.")
    UpdateQuestZone(Quest,"Mizan's Cellar")
    if not HasItem(Player,20708) and GetTradeskillLevel(Player)<2 then
    SetTradeskillLevel(Player,2)
    GiveQuestItem(Quest, Player, "", 20708,4142,4142,4142,7391,7391,7391)
     SummonItem(Player,1030001,1)
   end
--    GiveQuestItem(Quest, Player, "", 4142)
--   GiveQuestItem(Quest, Player, "", 4142)
--    GiveQuestItem(Quest, Player, "", 4142)
--    GiveQuestItem(Quest, Player, "", 7391)
--    GiveQuestItem(Quest, Player, "", 7391)
--    GiveQuestItem(Quest, Player, "", 7391)
    
	AddQuestStepCraft(Quest, 9, "Use the forge to create a tin bar using a fossil temper, a tin cluster and some fuel.", 1, 100, "I need to make Assistant Dreak a simple tin spike to block entrance to the cellar.", 775, 14460,12502,6055,11039)
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
end

   


function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I created a tin bar for use in making the tin spike.")

	AddQuestStepCraft(Quest, 10, "Use the forge to create a simple form tin spike using a fossil temper, a tin bar and some fuel.", 1, 100, "I need to make Assistant Dreak a simple tin spike to block entrance to the cellar.", 681, 14474,12513,6066,11049)
	AddQuestStepCompleteAction(Quest, 10, "Step10Complete")
end

function Step10Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 10, "I have completed making a tin spike to hold the cellar door closed!")
	UpdateQuestTaskGroupDescription(Quest, 3, "I made Assistant Dreak a tin spike to cover the door.")
    UpdateQuestZone(Quest,"Isle of Refuge")
    if HasItem(Player,14474) then
        RemoveItem(Player,14474,1)
    end
     if HasItem(Player,12513) then
        RemoveItem(Player,12513,1)
    end   
    if HasItem(Player,6066) then
        RemoveItem(Player,6066,1)
    end
    if HasItem(Player,11049) then
        RemoveItem(Player,11049,1)
    end    
    SendMessage(Player,"You place the tin spike in your quest satchle.","yellow")   
	AddQuestStepChat(Quest, 11, "I need to speak to Assistant Dreak.", 1, "I need to return with the spike that I made for Assistant Dreak.", 681, 3250167)
	AddQuestStepCompleteAction(Quest, 11, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 11, "I spoke with Assistant Dreak.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I gave the spike that I made to Assistant Dreak.")

	UpdateQuestDescription(Quest, "Assistant Dreak was quite pleased with the work I did both in cleaning the cellar and making a bar to keep people out of it. He's now granted me full access to the cellar to work on any items I wish to.")
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
		Step10Complete(Quest, QuestGiver, Player)
	elseif Step == 11 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
