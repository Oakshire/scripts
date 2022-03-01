--[[
	Script Name	: Quests/TimorousDeep/bigger_fish_to_fry.lua
	Script Purpose	: Handles the quest, "Bigger Fish to Fry"
	Script Author	: Scatman
	Script Date	: 2009.02.06
	
	Zone       : Timorous Deep
	Quest Giver: Citizen Niba'Ouz
	Preceded by: Fish of the Chrykori Island (fish_of_the_chrykori_island.lua)
	Followed by: None
--]]


function Init(Quest)
	-- Barnacled Scepter
	-- Fish-wrangler's Grips
	-- Poacher's Talon
	-- Sandstorm Staff
	-- Saltspray Slicer
	-- Sharkblade


	--  bull saltfin
	AddQuestStepObtainItem(Quest, 1,  "Niba'Ouz wants me to try to fish up a bull saltfin.", 1, 100,  ".", 2540,  3515)

	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotSaltfin")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/citizen_niba_ouz/_exp04/exp04_rgn_timorous_deep/chrykori_tie/nibaouz/nibaouz006.mp3", "", "", 3393303954, 1028332139, Player)
	AddConversationOption(conversation, "I will be back.")
	StartConversation(conversation, QuestGiver, Player, "I appreciate it! Return to me when you find one.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotSaltfin(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have fished up a bull saltfin.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Citizen Niba'Ouz.", 1, ".", 2540, 2630024)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have brought a bull saltfin to Citizen Niba'Ouz.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotSaltfin(Quest, QuestGiver, Player, Step)
	end
end
