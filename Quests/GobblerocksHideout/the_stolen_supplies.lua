--[[
    Script Name    : Quests/GobblerocksHideout/the_stolen_supplies.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.16 05:07:41
    Script Purpose : 

        Zone       : GobblerocksHideout
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to reclaim 15 pieces of stolen supplies from dead Gobblerock clan goblins", 15, 100, "I must collect all of the stolen supplies from the Sewer System Number 5.", 2287, 3490001, 3490000, 3490002, 3490003, 3490004, 3490005, 3490007, 3490008, 3490009, 3490010, 3490011, 3490012, 3490051, 3490052, 3490053, 3490054, 3490055, 3490056, 3490060, 3490061, 3490062)
		AddQuestStepKill(Quest, 2, "I need to collect 4 skins of brambleberry ale from the Gobblerock hooligans", 4, 100, "I must collect all of the stolen supplies from the Sewer System Number 5.", 406, 3490010, 3490061)
	AddQuestStep(Quest, 3, "I need to collect the first stolen chest of supplies", 1, 100, "I must collect all of the stolen supplies from the Sewer System Number 5.", 566)
	AddQuestStep(Quest, 4, "I need to collect the second stolen chest of supplies", 1, 100, "I must collect all of the stolen supplies from the Sewer System Number 5.", 566)
	AddQuestStep(Quest, 5, "I need to collect the third stolen chest of supplies", 1, 100, "I must collect all of the stolen supplies from the Sewer System Number 5.", 566)

	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")

end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will be back later then.")
	StartConversation(conversation, QuestGiver, Player, "Well, then let me know when you have collected everything.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the 15 pieces of stolen supplies.")
CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected 4 skins of brambleberry ale.")
CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected the first stolen chest of supplies.")
CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have collected the second stolen chest of supplies.")
CheckProgress(Quest, QuestGiver, Player)
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have collected the third stolen chest of supplies.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5324, 1) and QuestStepIsComplete(Player, 5324, 2) and QuestStepIsComplete(Player, 5324, 3) and QuestStepIsComplete(Player, 5324, 4) and QuestStepIsComplete(Player, 5324, 5) then
        	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected all of the stolen supplies.")
    	AddQuestStepChat(Quest, 6, "I must return these stolen goods to Master Jaedra. He better be happy with what I have done.", 1, "I must speak to Master Jaedra and return the stolen supplies to him.", 11, 330245)
       	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end        
end


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I have completed my task.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Master Jaedra.")

	UpdateQuestDescription(Quest, "I have completed my task.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
