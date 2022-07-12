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
	AddQuestStepChat(Quest, 1, "Speak with Kroota, and receive the ceremonial items from him.", 1, "The ceremony for Rallos Zek is to continue without Kroota.", 11, 1340040)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have been given the items for the ceremony, from Kroota.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken to Kroota.")
	
	AddQuestStepChat(Quest, 2, "I should speak to Somdoq.", 1, "I should speak to Somdoq about the ceremony.", 11, 1340043)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I have spoken to Somdoq about the ceremony.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Somdoq.")
	
	AddQuestStep(Quest, 3, "Burn the incense.", 1, 100, "I should perform the ceremony.", 0)
	AddQuestStep(Quest, 4, "Rip the flesh, and add it to the bones on the ground.", 1, 100, "I should perform the ceremony.", 0)
	AddQuestStep(Quest, 5, "Smear the blood on your face, and smash the vase on the ground.", 1, 100, "I should perform the ceremony.", 0)
	AddQuestStepCompleteAction(Quest, 3, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 5, "Step4Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've burnt the incense.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have ripped the flesh.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have smeared the blood on my face.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, TheFumeFireCeremony, 3) and QuestStepIsComplete(Player, TheFumeFireCeremony, 3) and QuestStepIsComplete(Player, TheFumeFireCeremony, 5) then
 	    UpdateQuestTaskGroupDescription(Quest, 5, "I should speak to Somdedog now as I performed my tasks.")
	    UpdateQuestStepDescription(Quest, 5, "I should speak to Somdedog now.")
	
	    AddQuestStepChat(Quest, 6, "I need to speak with Knight-Lieutenant Alesso.", 1, "I've killed a great many vermin that once infested Antonica.  I should return to Knight-Lieutenant Alesso.", 11, 120083,121828)
	    AddQuestStepCompleteAction(Quest, 6, "Step5Complete")
	end
end

function Step5Complete(Quest, QuestGiver, Player)
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

