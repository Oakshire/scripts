--[[
	Script Name	: Quests/TimorousDeep/sandy_eggs.lua
	Script Purpose	: Handles the quest, "Sandy Eggs"
	Script Author	: Scatman
	Script Date	: 2009.02.10
	
	Zone       : Timorous Deep
	Quest Giver: Varkori Riz'Lul
	Preceded by: Hopefully the Meat Isn't Timeworn (hopefully_the_meat_isnt_timeworn.lua)
	Followed by: None
--]]


function Init(Quest)
	-- Geo-Parser's Gloves
	-- Layered Scale Gauntlets
	-- Rune-covered Band
	-- Sand-scoured Sandals


	-- tortoise egg
	AddQuestStepObtainItem(Quest, 1,  "I need to collect some tortoise eggs from the dunes north and west of Chrykori Tie.", 6, 100,  ".", 2148,  10111)

	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotEggs")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/varkori_riz_lul/_exp04/exp04_rgn_timorous_deep/chrykori_tie/rizlul/rizlul005.mp3", "", "", 425764680, 2034208985, Player)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, QuestGiver, Player, "Thank you.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotEggs(Quest, QuestGiver, Player)
	SetStepComplete(Quest, 1, "I have collected the tortoise eggs.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these eggs to Varkori Riz'Lul.", 1, ".", 2148, 2630043)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have brought the tortoise eggs back to Varkori Riz'Lul.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotEggs(Quest, QuestGiver, Player)
	end
end
