--[[
	Script Name	: Quests/Nettleville/wind_blown_brell_serilis.lua
	Script Purpose	: Handles the quest, "Wind Blown Brell Serilis"
	Script Author	: Scatman
	Script Date	: 2009.08.10
	
	Zone       : Nettleville
	Quest Giver: Helain Conyers
	Preceded by: Book Bound to Bring Knowledge (book_bound_to_bring_knowledge.lua)
	Followed by: Looking for Work is Hard Work (looking_for_work_is_hard_work.lua)
--]]

-- Item ID's
local MISSING_PAGES = 9862

function Init(Quest)
	AddQuestStepHarvest(Quest, 1,  "Find the missing pages of the book.", 6, 100,  "With the pages of the book scattered by the wind they could be anywhere in town.", 185,  MISSING_PAGES)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_FoundPages")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers016.mp3", "", "", 1734136541, 86043254, Player)
	AddConversationOption(conversation, "I'll be back shortly... I hope.")
	StartConversation(conversation, QuestGiver, Player, "That's very nice of you.  By now the wind could have carried them anywhere in Nettleville.  Good luck!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_FoundPages(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found all of the missing pages!")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found all of the missing pages!")
	
	AddQuestStepChat(Quest, 2, "Speak with Helain, and give her the pages.", 1, "Even though they are a bit dirty, I bet Helain will still be able to read them.", 0, 2330007)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Helain was very happy to have the pages returned.")
	UpdateQuestTaskGroupDescription(Quest, 2, "The dirt didn't bother her at all. She was very thankful to have the book whole, again.")
	
	--lost book page
	while HasItem(Player, MISSING_PAGES, 1) do
		RemoveItem(Player, MISSING_PAGES)
	end
	
	UpdateQuestDescription(Quest, "Helain was very happy to have the Followers of Brell Serilis book whole, again.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_FoundPages(Quest, QuestGiver, Player)
	end
end