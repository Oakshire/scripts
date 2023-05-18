--[[
    Script Name    : Quests/WorldEvent/the_missing.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.18 03:05:58
    Script Purpose : 

        Zone       : WorldEvent
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "Track down Giidib. He and Frup separated on the southern beaches of Antonica.", 1, 100, "Track down Giidib. It's very likely his path could be picked up from one of the southern beaches in Antonica.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "It looks like Giidib managed to make it off of the beach.")
	UpdateQuestTaskGroupDescription(Quest, 1, "It looks like Giidib has managed to make it off of the beach and into the forest above.")

	AddQuestStep(Quest, 2, "Continue to track down Giidib.", 1, 100, "Continue to track Giidib until you are able to locate him.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "The froglok tracks continue on to the northwest.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Giidib's path led up to a broken log. His tracks lead off to the northwest.")

	AddQuestStep(Quest, 3, "Continue to track down Giidib.", 1, 100, "Continue to track Giidib until you are able to locate him.", 11)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "The froglok tracks continue back to the east.")
	UpdateQuestTaskGroupDescription(Quest, 3, "Giidib looks like he stopped here at a rock to take a rest for a bit. The tracks continue back to the east.")

	AddQuestStep(Quest, 4, "Continue to track down Giidib.", 1, 100, "Continue to track Giidib until you are able to locate him.", 11)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "The froglok tracks continue up to the north.")
	UpdateQuestTaskGroupDescription(Quest, 4, "Giidib's webbed footprints stop behind this log. It looks like he may have been trying to hide from something... or someone... The tracks continue up to the north.")

	AddQuestStep(Quest, 5, "Continue to track down Giidib.", 1, 100, "Continue to track Giidib until you are able to locate him.", 11)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "The froglok tracks veer back to the southwest.")
	UpdateQuestTaskGroupDescription(Quest, 5, "Some sort of scuffle broke out here. The tracks indicate that someone may have come upon Giidib and ambushed him. Broken branches in the tree limbs indicate that Giidib may have hopped into the upper branches to escape. The tracks veer back to the southwest.")

	AddQuestStep(Quest, 6, "Continue to track down Giidib.", 1, 100, "Continue to track Giidib until you are able to locate him.", 11)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "The froglok tracks end at this rock.")
	UpdateQuestTaskGroupDescription(Quest, 6, "Injured and bleeding, Giidib looks like he managed to make it to this pond area. It's unlikely he could have made it much further, he must be around here somewhere.")

	AddQuestStep(Quest, 7, "Interact with Giidib and lead him back to the nearest guard tower.", 1, 100, "I found Giidib, but he is seriously injured.  I must lead him to the nearest guard tower and try to seek medical help for him.", 11)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "Giidib was unable to survive upon reaching the guard tower.")
	UpdateQuestTaskGroupDescription(Quest, 7, "Giidib's death just outside the tower is tragic to be sure, but now Frup may be in danger.")

	AddQuestStepChat(Quest, 8, "Speak with Frup", 1, "Inform Frup Groaak of Giidib's death.", 11, 2360014,6600441	)
	AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "Frup has been informed of Giidib's death.")
	UpdateQuestTaskGroupDescription(Quest, 8, "Frup Groaak will need a while to think about the information I've given him.")

	UpdateQuestDescription(Quest, "Though I tried to get Giidib to safety, the assassin's poison had already done its work. Upon arriving at the tower, he collapsed and died. If I read Frup correctly, it seems he may think there is something larger behind this attack.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end