--[[
	Script Name		:	the_enemy_in_our_midst.lua
	Script Purpose	:	Handles the quest, "The Enemy in Our Midst"
	Script Author	:	premierio015
	Script Date		:	13.09.2020
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Confront Met Sleeth", 1, "Acquire the ledger of the vendor known as Met Sleeth.  He sells his wares in the mercantile area south of the Coliseum in western Freeport.", 11, 5590171)
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
	UpdateQuestStepDescription(Quest, 1, "Confronted Met Sleeth.")

	AddQuestStepChat(Quest, 2, "Acquire Met Sleeth's ledger", 1, "Acquire the ledger of the vendor known as Met Sleeth.  He sells his wares in the mercantile area south of the Coliseum in western Freeport.", 716, 5590171)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Acquired Met Sleeth's ledger.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've acquired the vendor's ledger.")

	AddQuestStepChat(Quest, 3, "Confront Jan MacGetz", 1, "Acquire the ledger of the vendor known as Jan MacGetz.  She sells her wares in the mercantile area north of the Coliseum in western Freeport.", 11, 5590041)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Confronted Jan MacGetz.")

	AddQuestStepChat(Quest, 4, "Acquire Jan MacGetz's ledger", 1, "Acquire the ledger of the vendor known as Jan MacGetz.  She sells her wares in the mercantile area north of the Coliseum in western Freeport.", 716, 5590041 )
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "Acquired Jan MacGetz's ledger.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've acquired the vendor's ledger.")

	AddQuestStepChat(Quest, 5, "Return to Serris", 1, "I should head back to the Freeport Militia House and return these ledgers to Serris.", 11, 5590121)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "Returned to Serris.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned the ledgers to Serris.")

	UpdateQuestDescription(Quest, "I was able to ''convince'' Jan MacGetz and Met Sleeth to give me their ledgers.  Now the Freeport Militia will be able to find out who they've been supplying with weapons.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end


