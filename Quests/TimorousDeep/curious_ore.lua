--[[
	Script Name	: Quests/TimorousDeep/curious_ore.lua
	Script Purpose	: Handles the quest, "Curious Ore"
	Script Author	: Scatman
	Script Date	: 2009.02.06
	
	Zone       : Timorous Deep
	Quest Giver: Tykor Gi'Lok
	Preceded by: Poaching the Poachers (poaching_the_poachers.lua)
	Followed by: Report to the Primary (report_to_the_primary.lua)
--]]


function Init(Quest)
	-- Reinforced Miners Sack


	-- curious ore
	AddQuestStepObtainItem(Quest, 1,  "I need some samples of the ore the Haoaerans are mining to the west.", 3, 100,  ".", 1086,  4401)

	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotOre")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/tykor_gi_lok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/gilok/gilok004.mp3", "", "", 2401252534, 3431113694, Player)
	AddConversationOption(conversation, "I will return with the ore.")
	StartConversation(conversation, QuestGiver, Player, "Good. Some think the spirocs are just pretty birds with bad attitudes, but I think differently. They're up to something, I know it.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotOre(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the ore samples.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these ore samples back to Tykor Gi'Lok.", 1, ".", 1086, 2630018)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have brought the ore samples to Tykor Gi'Lok.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotOre(Quest, QuestGiver, Player)
	end
end
