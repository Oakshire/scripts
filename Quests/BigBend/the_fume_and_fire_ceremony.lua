--[[
	Script Name		:	the_fume_and_fire_ceremony.lua
	Script Purpose	:	Handles the quest, "The Fume and Fire Ceremony"
	Script Author	:	torsten
	Script Date		:	12.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Kroota Gukbutcher 
	Preceded by		:	Much Ado' About Rallos
	Followed by		:	More Barshing!
--]]

local TheFumeFireCeremony = 5635

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should speak to Kroota again.", 1, "The ceremony for Rallos Zek is to continue without Kroota.", 11, 1340040)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have spoken to Kroota.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken to Kroota and got the items for the ceremony.")
	AddItem(Player, 12866, 1)
    AddItem(Player, 4383, 1)
    AddItem(Player, 8298, 1)
    
    AddQuestStepChat(Quest, 2, "I should speak to Somdoq.", 1, "The ceremony for Rallos Zek is to continue without Kroota.", 11, 1340043)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I have spoken to Somdoq about the ceremony.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Somdoq.")
	
	AddQuestStep(Quest, 3, "Burn the incense.", 1, 100, "I should perform the ceremony.", 0)
	AddQuestStep(Quest, 4, "Rip the flesh, and add it to the bones on the ground.", 1, 100, "I should perform the ceremony.", 0)
	AddQuestStep(Quest, 5, "Smear the blood on your face, and smash the vase on the ground.", 1, 100, "I should perform the ceremony.", 0)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've burnt the incense.")
	RemoveItem(Player, 8298)
    CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have ripped the flesh.")
    RemoveItem(Player, 12866)
    CheckProgress(Quest, QuestGiver, Player)
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have smeared the blood on my face.")
	RemoveItem(Player, 4383)
    CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, TheFumeFireCeremony, 3) and QuestStepIsComplete(Player, TheFumeFireCeremony, 4) and QuestStepIsComplete(Player, TheFumeFireCeremony, 5) then
 	    UpdateQuestTaskGroupDescription(Quest, 3, "I should speak to Somdedog now as I performed my tasks.")
	
	    AddQuestStepChat(Quest, 6, "I should speak to Somdoq again", 1, "The ceremony is about to continue.", 0, 1340043)
	    AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
	end
end

function Step6Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 6, "I have spoken to Somdoq again.")
	UpdateQuestTaskGroupDescription(Quest, 6, "Somdog finished the ceremony.")

    AddQuestStepChat(Quest, 7, "I should return to Kroota.", 1, "I should return to Kroota and tell him about the ceremony", 0, 1340040)
	AddQuestStepCompleteAction(Quest, 7, "QuestComplete")
end 

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "The ceremony was completed without interruption. ")
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

