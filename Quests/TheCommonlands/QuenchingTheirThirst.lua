--[[
	Script Name		:	Quests/TheCommonlands/QuenchingTheirThirst.lua
	Script Purpose	:	Handles the quest, "Quenching Their Thirst"
	Script Author	:	premierio015
	Script Date		:	17.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Madam Vi
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to fill a flask with water from a freshwater lake far to the west", 5 , "Madam Vi wants me to fill three flasks: one with water from a freshwater lake, one from a river, and one from the sea.", 310, 537.02, -49.98, -398.14)
	AddQuestStepLocation(Quest, 2, "I need to fill a flask with water from a nearby river west of the Crossroads", 5, "Madam Vi wants me to fill three flasks: one with water from a freshwater lake, one from a river, and one from the sea.", 310, -12.00, -46.80, -417.76)
	AddQuestStepLocation(Quest, 3, "I need to fill a flask with water from the sea to the northeast", 5, "Madam Vi wants me to fill three flasks: one with water from a freshwater lake, one from a river, and one from the sea.", 310, -1056.41, -145.45, -634.32)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Of course.")
	StartConversation(conversation, QuestGiver, Player, "Do make sure there are no parasites in the water.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have filled a flask with lake water.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have filled a flask with water from a nearby river.")
      CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 3, "I have filled a flask with water from the sea.")
    	CheckProgress(Quest, QuestGiver, Player)
end


function CheckProgress(Quest, QuestGiver, Player)
       if QuestStepIsComplete(Player, 5222, 1) and QuestStepIsComplete(Player, 5222, 2) and QuestStepIsComplete(Player, 5222, 3) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I have the three filled flasks for Madam Vi at the Crossroads.")
	AddQuestStepChat(Quest, 4, "I should return to Madam Vi at the Crossroads", 1, "I have filled the flasks for Madam Vi.", 310, 330179)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end
   end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have filled the flasks and returned them to Madam Vi.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned the three flasks to Madam Vi at the Crossroads.")

	UpdateQuestDescription(Quest, "I filled the three flasks for Madam Vi.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
