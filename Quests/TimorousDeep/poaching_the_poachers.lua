--[[
	Script Name	: Quests/TimorousDeep/poaching_the_poachers.lua
	Script Purpose	: Handles the quest, "Poaching the Poachers"
	Script Author	: Scatman
	Script Date	: 2009.02.06
	
	Zone       : Timorous Deep
	Quest Giver: Tykor Gi'Lok
	Preceded by: None
	Followed by: Curious Ore (curious_ore.lua)
--]]


function Init(Quest)
	-- Raptor-scaled Armguards
	-- Scaled Armguards
	-- Sunburnt Bracers
	-- Empowered Earring
	-- Geo-Parser's Sleeves


	AddQuestStepKill(Quest, 1, "I need to kill four Haoaeran poachers.", 4, 100, ".", 611, 2630017)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedPoachers")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/tykor_gi_lok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/gilok/gilok001.mp3", "", "", 611409560, 797692345, Player)
	AddConversationOption(conversation, "As good as done.")
	StartConversation(conversation, QuestGiver, Player, "No hesitation, I like it. You will kill the poachers, and they will know Gi'Lok knows how to delegate.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedPoachers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the Haoaeran poachers.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Tykor Gi'Lok.", 1, ".", 0, 2630018)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have slain the Haoaeran poachers for Tykor Gi'Lok.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedPoachers(Quest, QuestGiver, Player)
	end
end
