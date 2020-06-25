--[[
	Script Name	: Quests/Baubbleshire/nogginspark_reactors.lua
	Script Purpose	: Handles the quest, "Nogginspark Reactors"
	Script Author	: Scatman
	Script Date	: 2009.09.27
	
	Zone       : The Baubbleshire
	Quest Giver: Neezer Grund
	Preceded by: Scraptastic! (scraptastic.lua)
	Followed by: Neezer's Survery (neezers_survery.lua)
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect some Nogginspark Reactors.", 7, 100, "I need to collect some Nogginspark Reactors from the rats in the Baubbleshire that are near the grate to the Catacombs.", 791, 2380126)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedRats")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund034a.mp3", "", "", 2831738358, 3598455810, Player)
	AddConversationOption(conversation, "I'll be back when I've collected seven reactors.")
	StartConversation(conversation, QuestGiver, Player, "They shouldn't be too much of a problem. Remember, they hang out near the Catacomb entrance.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedRats(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the Nogginspark Reactors.")
	
	AddQuestStepChat(Quest, 2, "I need to return these Nogginspark Reactors to Neezer Grund.", 1, "I need to collect some Nogginspark Reactors from the rats in the Baubbleshire that are near the grate to the Catacombs.", 0, 2380038)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have returned the Nogginspark Reactors to Neezer Grund.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the Nogginspark reactors and returned them to Neezer.")
	UpdateQuestDescription(Quest, "I have collected the Nogginspark Reactors and given them to Neezer Grund.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedRats(Quest, QuestGiver, Player)
	end
end