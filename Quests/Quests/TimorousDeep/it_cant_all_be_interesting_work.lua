--[[
	Script Name	: Quests/TimorousDeep/it_cant_all_be_interesting_work.lua
	Script Purpose	: Handles the quest, "It Can't ALL Be Interesting Work"
	Script Author	: Scatman
	Script Date	: 2009.02.27
	
	Zone       : Timorous Deep
	Quest Giver: Bio-Parser Zo'Dok
	Preceded by: The Filament Strangler (the_filament_strangler.lua)
	Followed by: None
--]]


function Init(Quest)
	 -- Geo-Parser's Mantle
	 -- Raptor-scaled Shoulders
	 ---Steel Belt Buckle
	 -- Woven Trythec Band


	-- filament encapsulated monitor
	AddQuestStepObtainItem(Quest, 1,  "I need to collect some Trythec roots.", 5, 100,  ".", 197,  10162)

	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotRoots")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/bio-parser_zo_dok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zodok/zodok005.mp3", "", "", 631994301, 82902587, Player)
	AddConversationOption(conversation, "I will return with the roots.")
	StartConversation(conversation, QuestGiver, Player, "Great. I was studying them before I ran across this carnivorous plant, and while it captured my interest, I've no desire to abandon them completely.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotRoots(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the Trythec roots.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these roots to Bio-Parser Zo'Dok.", 1, ".", 197, 2630080)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have brought the Trythec roots back to Zo'Dok.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotRoots(Quest, QuestGiver, Player)
	end
end
