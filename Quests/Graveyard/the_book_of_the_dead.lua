--[[
	Quest Template
	Script Name	: the_book_of_the_dead.lua
	Script Purpose	: Handles the quest, "The Book of the Dead"
	Script Author	: Scatman
	Script Date	: 2009.07.12

        Zone            : The Graveyard
        Quest Giver     : Custodian Zaddar Sullissia
        Preceded by     : Obtaining an Ancient Staff (obtaining_an_ancient_staff.lua)
        Followed by     : Repairing the Ward (repairing_the_ward.lua)
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must confront the grave robbers in the Freeport graveyard and hope that one of them has found the Book of the Dead.", 1, 20, "I must find the Book of the Dead within the walls of the Freeport graveyard, starting with the graverobbers.", 2002, 1250093, 1250094, 1250092, 1250096)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_FoundBook")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar079b.mp3", "", "", 2915353095, 1248129975, Player)
	AddConversationOption(conversation, "I will return when I have it.")
	StartConversation(conversation, QuestGiver, Player, "Excellent. Return to me when you have found it.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_FoundBook(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've obtained the Book of the Dead.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found the Book of the Dead and must return it to Zaddar.")
	
	-- The Book of the Dead
	-- TODO: Display quest reward popup.
	if not HasItem(Player, 12141) then
		SummonItem(Player, 12141)
	end
	
	AddQuestStepChat(Quest, 2, "Take the Book of the Dead to Zaddar.", 1, "I must return this ancient tome to Zaddar quickly.", 0, 1250014)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The Book of the Dead
	while HasItem(Player, 12141) do
		RemoveItem(Player, 12141)
	end
	
	UpdateQuestStepDescription(Quest, 2, "I've given Zaddar the Book of the Dead.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've given the Book of the Dead to Zaddar.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I've found one of the last known copies of the Book of the Dead and I've returned it to Zaddar as instructed.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_FoundBook(Quest, QuestGiver, Player)
	end
end