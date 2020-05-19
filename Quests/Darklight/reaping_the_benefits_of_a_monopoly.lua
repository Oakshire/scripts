--[[
	Script Name	: Quests/Darklight/reaping_the_benefits_of_a_monopoly.lua
	Script Purpose	: Handles the quest, "Reaping the Benefits of a Monopoly"
	Script Author	: Scatman
	Script Date	: 2009.02.04
	
	Zone       : Darklight Wood
	Quest Giver: Dirzdia T'Zauvirr
	Preceded by: Smoking the Competition (smoking_the_competition.lua)
	Followed by: So Hot You Catch Them Cooked (so_hot_you_catch_them_cooked.lua)
--]]


function Init(Quest)


	AddQuestStepObtainItem(Quest, 1,  "I need to fish up eight searing trout.", 8, 100,  ".", 2542,  45370)

	AddQuestStepCompleteAction(Quest, 1, "step1_complete_caughtFish")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia012.mp3", "", "", 2680874987, 3116118568, Player)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "Great! Just bring them back to me when you've caught them.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_caughtFish(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have caught the trout.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these trout back to Dirzdia.", 1, ".", 2542, 340139)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	-- remove the fish
	UpdateQuestDescription(Quest, "I have caught the searing trout and brought it back to Dirzdia.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_caughtFish(Quest, QuestGiver, Player)
	end
end
