--[[
    Script Name    : Quests/Antonica/the_balance_of_life.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.27 09:08:38
    Script Purpose : Revamped version of this quest.  After Willow Wood is disabled.

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill ten sea turtles in the waters near Antonica.", 10, 100, "I must bring down ten sea turtles to lower their population.", 201, 120033, 121212)
	AddQuestStepKill(Quest, 2, "I must kill some red tailed hawks in Antonica.", 3, 100, "I must slay three of the red tailed hawks in Antonica.", 80, 120029) -- need correct icon
	AddQuestStepKill(Quest, 3, "I must kill seven darkclaw crabs on the shores of Antonica.", 7, 100, "I must destroy seven darkclaw crabs on the shores of Antonica.", 77, 120118, 120762, 121265) -- need correct icon
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end



function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I brought down ten sea turtles.")
	CheckProgress(Quest, QuestGiver, Player)
end


function Step2Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 2, "I slew three red tailed hawks.")
CheckProgress(Quest, QuestGiver, Player)
end


function Step3Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 3, "I destroyed seven darkclaw crabs.")
   CheckProgress(Quest, QuestGiver, Player)
end


function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5349, 1) and QuestStepIsComplete(Player, 5349, 2)  and QuestStepIsComplete(Player, 5349, 3)  then
	AddQuestStepChat(Quest, 4, "I need to speak with Daryann at Windstalker Village.", 1, "I must return to speak with Daryann in Windstalker Village.", 11, 121302)
    AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end
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

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I spoke with Daryann.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I returned and spoke with Daryann.")

	UpdateQuestDescription(Quest, "I've done what's necessary as a good steward of the lands. I've learned that every animal must have its numbers managed or life's balance is upset.  Daryann appreciated my help.")
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

