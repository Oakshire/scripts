--[[
	Script Name	: Quests/Darklight/so_hot_you_catch_them_cooked.lua
	Script Purpose	: Handles the quest, "So Hot You Catch Them Cooked"
	Script Author	: Scatman
	Script Date	: 2009.02.04
	
	Zone       : Darklight Wood
	Quest Giver: Dirzdia T'Zauvirr
	Preceded by: Reaping the Benefits of a Monopoly (reaping_the_benefits_of_a_monopoly.lua)
	Followed by: The Big One (the_big_one.lua)
--]]


function Init(Quest)


	AddQuestStepObtainItem(Quest, 1,  "I need to catch eight seared char.", 8, 100,  ".", 2541,  45366)

	AddQuestStepCompleteAction(Quest, 1, "step1_complete_caughtFish")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia016.mp3", "", "", 3096333821, 2080368744, Player)
	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, QuestGiver, Player, "Glad to hear it! I'll be waiting here... fishing!")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_caughtFish(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have caught the seared char.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these fish back to Dirzdia.", 1, ".", 2541, 340139)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	-- remove the fish
	UpdateQuestDescription(Quest, "I have brought Dirzdia the seared char she wanted.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_caughtFish(Quest, QuestGiver, Player)
	end
end
