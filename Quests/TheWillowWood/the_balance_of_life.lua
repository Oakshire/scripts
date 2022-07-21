--[[
    Script Name    : Quests/TheWillowWood/the_balance_of_life.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.16 05:02:53
    Script Purpose : 

        Zone       : TheWillowWood
        Quest Giver: Daryann Stormrider
        Preceded by: This is the classic version of the quest in WillowWood
        Followed by: 
--]]



function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill ten sea turtles in the waters near Antonica.", 10, 100, "I must bring down ten sea turtles to lower their population.", 201, 120033, 121212)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	UpdateQuestZone(Quest, "Antonica")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/daryann_stormrider/qey_village05/quests/daryann_stormrider/daryann003.mp3", "", "nod", 1849804125, 150143999, Player)
	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, QuestGiver, Player, "Sometimes a population grows rapidly, and we must hunt weak and sickly creatures to ensure others in the population remain healthy. Other times, predators disrupt nature's balance. I need you to hunt ten sea turtles near Antonica's shore before their egg laying season begins.  Please return to me when you finish.")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I brought down ten sea turtles.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I brought down ten sea turtles.")
    UpdateQuestZone(Quest, "The Willow Wood")
    
	AddQuestStepChat(Quest, 2, "I need to speak with Daryann at The Willow Wood.", 1, "I must return to speak with Daryann in The Willow Wood.", 201, 2370108)
   AddQuestStepCompleteAction(Quest, 2, "TurtlesDone")
end



function TurtlesDone(Quest)
    UpdateQuestStepDescription(Quest, 2, "I spoke with Daryann.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned and spoke with Daryann.")
	UpdateQuestZone(Quest, "Antonica")
    
    AddQuestStepKill(Quest, 3, "I must kill some red tailed hawks in Antonica.", 3, 100, "I must slay three of the red tailed hawks in Antonica.", 80, 120029, 121208) 
	AddQuestStepCompleteAction(Quest, 3, "HawksDone")
end	

function HawksDone(Quest)
    UpdateQuestZone(Quest, "The Willow Wood")
    UpdateQuestStepDescription(Quest, 3, "I slew three red tailed hawks.")
    UpdateQuestTaskGroupDescription(Quest, 3, "I slew three red tailed hawks.")

    AddQuestStepChat(Quest, 4, "I need to speak with Daryann at The Willow Wood.", 1, "I must return to speak with Daryann in The Willow Woode.", 80, 2370108)
   AddQuestStepCompleteAction(Quest, 4, "CrabTime")
end
	
	
function CrabTime(Quest)
    UpdateQuestStepDescription(Quest, 4, "I spoke with Daryann.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I returned and spoke with Daryann.")
	UpdateQuestZone(Quest, "Antonica")
    
    AddQuestStepKill(Quest, 5, "I must kill seven darkclaw crabs on the shores of Antonica.", 7, 100, "I must destroy seven darkclaw crabs on the shores of Antonica.", 77, 120118, 120762, 121265) 
	AddQuestStepCompleteAction(Quest, 5, "CrabsComplete")
end	

function CrabsComplete(Quest, QuestGiver, Player)
    UpdateQuestZone(Quest, "The Willow Wood")
    UpdateQuestStepDescription(Quest, 5, "I have killed seven darkclaw crabs.")
    UpdateQuestTaskGroupDescription(Quest, 5, "I destroyed seven darkclaw crabs.")
    
    AddQuestStepChat(Quest, 6, "I need to speak with Daryann at The Willow Wood.", 1, "I must return to speak with Daryann in The Willow Wood.", 77, 2370108)
    AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
 end   
  

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I spoke with Daryann.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I returned and spoke with Daryann.")

	UpdateQuestDescription(Quest, "I've done what's necessary as a good steward of the lands. I've learned that every animal must have its numbers managed or life's balance is upset.  Daryann appreciated my help.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
     elseif Step == 2 then	    
          TurtlesDone(Quest, QuestGiver, Player)
    elseif Step == 3 then	    
        HawksDone(Quest, QuestGiver, Player)
    elseif Step == 4 then
		CrabTime(Quest, QuestGiver, Player)
	elseif Step == 5 then
	    CrabsComplete(Quest, QuestGiver, Player)
     elseif Step == 6 then	    
          QuestComplete(Quest, QuestGiver, Player)
        end
end

