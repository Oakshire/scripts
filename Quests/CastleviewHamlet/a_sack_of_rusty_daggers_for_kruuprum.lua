--[[
    Script Name    : Quests/CastleviewHamlet/a_sack_of_rusty_daggers_for_kruuprum.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.28 01:01:00
    Script Purpose : 

        Zone       : CastleviewHamlet
        Quest Giver: Kruuprum 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find Mender Ironmallet.", 1, "I need to find Mender Ironmallet in Graystone Yard.", 0, 2350012)
	AddQuestStepCompleteAction(Quest, 1, "IronmalletChat")
	UpdateQuestZone(Quest, "Graystone Yard")
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

function IronmalletChat(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I found Mender Ironmallet.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Mender Ironmallet.")
	
    UpdateQuestZone(Quest, "Castleview Hamlet")
	AddQuestStepChat(Quest, 2, "I need to return to Kruuprum .", 1, "I need deliver this bag of rusty daggers to Kruuprum in Castleview Hamlet.", 10, 2360040)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)	
	UpdateQuestStepDescription(Quest, 2, "I found Mender Ironmallet.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I found Mender Ironmallet.")

	UpdateQuestDescription(Quest, "I retrieved a sack of rusted daggers for Merchant Kruuprum of Castleview Hamlet. I think he sells these inferior daggers.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		IronmalletChat(Quest, QuestGiver, Player)
    elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
