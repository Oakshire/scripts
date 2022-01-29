--[[
    Script Name    : Quests/CastleviewHamlet/badger_claws_for_yanari_.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.28 11:01:35
    Script Purpose : 

        Zone       : CastleviewHamlet
        Quest Giver: Yanari
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect claws from some vicious badgers.", 4, 75, "I need to collect four vicious badger claws for Yanari Cyellann in Castleview.", 174, 1950039)
	AddQuestStepCompleteAction(Quest, 1, "Turnin")
	UpdateQuestZone(Quest,"Oakmyst Forest")
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

function Turnin(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have collected the vicious badger claws.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have four vicious badger claws for Yanari Cyellann in Castleview.")

	UpdateQuestZone(Quest,"Castleview Hamlet")
	AddQuestStepChat(Quest, 2, "I need to return to Yanari.", 1,"I need give Yanari these vicious badger claws in Castleview.", 174, 2360047)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have returned to Yanari.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have delievered the vicious badger claws to Yanari Cyellann.")

	UpdateQuestDescription(Quest, "I delivered four vicious badger claws to Yanari Cyellann and she imbued a wand for me as payment.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Turnin(Quest, QuestGiver, Player)
	end
		if Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
