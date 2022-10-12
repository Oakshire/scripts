--[[
    Script Name    : Quests/CastleviewHamlet/bat_fur_for_fevalin_.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.28 04:01:14
    Script Purpose : 
        
        original copper value: 67c
        
        Zone       : CastleviewHamlet
        Quest Giver: Fevalin
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to obtain the albino fur of the cave bats.", 5, 80, "I need to gather the rare albino fur of the bats from the Caves near the Baubbleshire.", 126, 1970014,1970023,8260073, 8260016,8260018,8260073,	8260080)
	AddQuestStepCompleteAction(Quest, 1, "Bats1")
	UpdateQuestZone(Quest,"Caves")
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

function Bats1(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have gathered the bat fur I need.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered the rare albino fur of some cave bats for Merchant Fevalin.")

	AddQuestStepChat(Quest, 2, "I need to return to Fevalin.", 1, "I need to delivery the rare albino fur of the bats to Fevalin.", 126, 2360039)
	AddQuestStepCompleteAction(Quest, 2, "BatsReturn1")
	UpdateQuestZone(Quest,"Castleview Hamlet")
end

function BatsReturn1(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I returned to Fevalin")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've delivered the albino pelts to Fevalin.")

	AddQuestStepKill(Quest, 3, "I need to obtain MORE albino fur of the cave bats.", 5, 100, "I need to gather MORE rare albino fur of the bats from the Caves near the Baubbleshire.", 126, 1970014,1970023,8260073, 8260016,8260018,8260073,8260080)
	AddQuestStepCompleteAction(Quest, 3, "Bats2")
	UpdateQuestZone(Quest,"Caves")
end

function Bats2(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have gathered additional bat fur I need.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've gathered additional rare albino fur of some cave bats for Merchant Fevalin.")

	AddQuestStepChat(Quest, 4, "I need to return to Fevalin, again.", 1, "I need to delivery the additional rare albino fur of the bats to Fevalin.", 126, 2360039)
	AddQuestStepCompleteAction(Quest, 4, "QuestCompelte")
	UpdateQuestZone(Quest,"Castleview Hamlet")
end

function QuestCompelte(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I returned to Fevalin.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've gathered additional rare albino fur for Merchant Fevalin.")

	UpdateQuestDescription(Quest, "Despite asking me for a second set of rare albino fur, I gathered all the bat fur Fevalin needed. Perhaps I am the stronger for it.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Bats1(Quest, QuestGiver, Player)
	elseif Step == 2 then
		BatsReturn1(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Bats2(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestCompelte(Quest, QuestGiver, Player)
	end
end
