--[[
	Script Name	: Quests/TimorousDeep/fish_of_the_chrykori_island.lua
	Script Purpose	: Handles the quest, "Fish of the Chrykori Island"
	Script Author	: Scatman
	Script Date	: 2009.02.06
	
	Zone       : Timorous Deep
	Quest Giver: Citizen Niba'Ouz
	Preceded by: None
	Followed by: Bigger Fish to Fry (bigger_fish_to_fry.lua)
--]]


function Init(Quest)


	-- Chrykori saltfin
	AddQuestStepObtainItem(Quest, 1,  "I need to fish up some Chrykori saltfin.", 3, 100,  ".", 2540,  3726)

	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotSaltfin")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/citizen_niba_ouz/_exp04/exp04_rgn_timorous_deep/chrykori_tie/nibaouz/nibaouz003.mp3", "", "", 3742615555, 2339583945, Player)
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, QuestGiver, Player, "Great. You can find them all around this side of the island.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotSaltfin(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have fished up the saltfin.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Citizen Niba'Ouz.", 1, ".", 2540, 2630024)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	-- remove Chrykori saltfin
	while HasItem(Player, 4363) do
		RemoveItem(Player, 4363)
	end

	UpdateQuestDescription(Quest, "I have brought the Chrykori saltfin to Citizen Niba'Ouz.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotSaltfin(Quest, QuestGiver, Player, Step)
	end
end
