--[[
	Script Name		:	Quests/TheCommonlands/an_orcish_trinket.lua
	Script Purpose	:	Handles the quest, "An Orcish Trinket"
	Script Author	:	premierio015
	Script Date		:	05.06.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with someone who knows about orc history", 1, "I should see if I can find someone who knows about this orcish object.", 11, 330258)
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
	UpdateQuestStepDescription(Quest, 1, "Rilkrik in the Crossroads told me of the story of Raegnir.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Rilkrik told me of Raegnir the orc.")

	AddQuestStepObtainItem(Quest, 2, "I need Argorym's blade", 1, 100, "I need to find the three remaining objects that made up Raegnir's weapon.", 72,  3963)
		AddQuestStepObtainItem(Quest, 3, "I need the ''Daughter of the Sky'' jewel", 1, 100, "I need to find the three remaining objects that made up Raegnir's weapon.", 771,  6282)
			AddQuestStepObtainItem(Quest, 4, "I need the ''Son of the Sky'' jewel", 1, 100, "I need to find the three remaining objects that made up Raegnir's weapon.", 768,  13124)


	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
		AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have acquired Argorym's blade.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have acquired the &quot;Daughter of the Sky&quot; jewel.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5254, 2) and QuestStepIsComplete(Player, 5254, 3) and QuestStepIsComplete(Player, 5254, 4) then
    UpdateQuestTaskGroupDescription(Quest, 2, "I have found all that made up Raegnir's weapon.")    
    AddQuestStepChat(Quest, 5, "I need to seek out Raegnir in The Siege Lands", 1, "I need to travel to the Siege Lands outside of Freeport and find the spirit of Raegnir.", 11, 330405)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end
   end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have acquired the ''Son of the Sky'' jewel.")
    CheckProgress(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I have found Raegnir.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have given Raegnir the remnants of his old weapon.")

	UpdateQuestDescription(Quest, "I found all the pieces of Raegnir's blade and returned them to him. I also told Raegnir the true story of what happened when he died. He thanked me for both the blade and the truth.")
	GiveQuestReward(Quest, Player)
	RemoveItem(Player,  13124)
	RemoveItem(Player,  6282)
	RemoveItem(Player,  3963)
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
