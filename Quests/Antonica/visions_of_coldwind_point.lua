--[[
    Script Name    : Quests/Antonica/visions_of_coldwind_point.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.04 09:08:55
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: Visions of Coldwind Point(Item)
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "Read the book.", 1, 100, "I must read \"The Visions of Coldwind Point\" that Quallium gave me.", 11)
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
	UpdateQuestStepDescription(Quest, 1, "Read the book.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I read \"The Visions of Coldwind Point\".")
	AddQuestStepZoneLoc(Quest, 2, "Visit the vigilant giant.", 10, "I must visit the four location in Antonica mentioned in \"Visions of Coldwind Point\".", 11, 347, -9, 812, 12)
	AddQuestStepZoneLoc(Quest, 3, "Visit the tree that peeks.", 10, "I must visit the four location in Antonica mentioned in \"Visions of Coldwind Point\".", 11,  -25, -5, 671, 12)
	AddQuestStepZoneLoc(Quest, 4, "Visit the sword like no other.", 10, "I must visit the four location in Antonica mentioned in \"Visions of Coldwind Point\".", 11, -435, 1, 553, 12)
	AddQuestStepZoneLoc(Quest, 5, "Visit the King of the thicket.", 10, "I must visit the four location in Antonica mentioned in \"Visions of Coldwind Poin\".", 11, -698, -3, 596, 12)
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
    
end



function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Visited the lighthouse.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Visited the Peeking Tree.")
   CheckProgress(Quest, QuestGiver, Player)

end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "Visited the Qeynos Hills Claymore.")
	CheckProgress(Quest, QuestGiver, Player)
end



function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "Visited the Great Oak.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I visited the four location in Antonica mentioned in  \"Visions of Coldwind Point\".")
    if HasItem(Player, 15265) then
    RemoveItem(Player, 15265)
    end
	UpdateQuestDescription(Quest, "I visited all four locations mentioned in the four poems of Quallium found in \"Visions of Coldwind Point\".")
	GiveQuestReward(Quest, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5332, 2) and QuestStepIsComplete(Player, 5332, 3)  and QuestStepIsComplete(Player, 5332, 4) and QuestStepIsComplete(Player, 5332, 5)  then
     AddQuestStepCompleteAction(Quest, 5, "Quest5Complete")
end
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


