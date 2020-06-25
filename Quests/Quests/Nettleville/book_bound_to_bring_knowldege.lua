--[[
	Script Name	: Quests/Nettleville/book_bound_to_bring_knowldege.lua
	Script Purpose	: Handles the quest, "Books Bound to Bring Knowledge"
	Script Author	: Scatman
	Script Date	: 2009.08.10
	
	Zone       : Nettleville
	Quest Giver: Helain Conyers
	Preceded by: None
	Followed by: Wind Blown Brell Serilis (wind_blown_brell_serilis.lua)
--]]

-- Item ID's
local STACK_OF_BOOKS = 13282

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Andret can be found at the scribe building, in the Northern corner of town.", 1, "She has asked me to get some books from Andret Surtees.", 718, 2330035)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeWithAndret")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers009.mp3", "", "", 154750033, 3665943959, Player)
	AddConversationOption(conversation, "Sure thing. Be back soon!")
	StartConversation(conversation, QuestGiver, Player, "Uh, thank you! Andret Surtees said that I could borrow some books from him. Always looking for more knowledge! Hehehe. Could you go pick them up for me?")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeWithAndret(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Andret gave me a stack of books for her.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Andret gave me a stack of books for her.")
	
	-- Stack of books
	if not HasItem(Player, STACK_OF_BOOKS, 1) then
		SummonItem(Player, STACK_OF_BOOKS)
	end
	
	AddQuestStepChat(Quest, 2, "Speak to Helain. She was at the stairs leading to the Mariner's Bell.", 1, "I should return to her, now that I have run the errand.", 0, 2330007)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Helain was very thankful for the books.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Helain was very thankful for the books.")
	
	-- Stack of books
	while HasItem(Player, STACK_OF_BOOKS, 1) do
		RemoveItem(Player, STACK_OF_BOOKS)
	end
	
	UpdateQuestDescription(Quest, "Helain was very thankful for Andret's books.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_SpokeWithAndret(Quest, QuestGiver, Player)
	end
end