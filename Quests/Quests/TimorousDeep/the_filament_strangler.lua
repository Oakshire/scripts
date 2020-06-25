--[[
	Script Name	: Quests/TimorousDeep/the_filament_strangler.lua
	Script Purpose	: Handles the quest, "The Filament Strangler"
	Script Author	: Scatman
	Script Date	: 2009.02.27
	
	Zone       : Timorous Deep
	Quest Giver: Bio-Parser Zo'Dok
	Preceded by: None
	Followed by: It Can't ALL Be Interesting Work (it_cant_all_be_interesting_work.lua)
--]]


function Init(Quest)


	-- filament encapsulated monitor
	AddQuestStepObtainItem(Quest, 1,  "I need some filament encapsulated monitors for Bio-Parser Zo'Dok.", 3, 100,  ".", 136,  5080)

	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotFilaments")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/bio-parser_zo_dok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zodok/zodok002.mp3", "", "", 4085643923, 1538179326, Player)
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, QuestGiver, Player, "And don't worry, the plant won't try to eat you. It can recognize the lizards somehow and only attacks them. Besides, you're much too big to wrap up.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotFilaments(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the filament encapsulated monitors.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these monitors to Bio-Parser Zo'Dok.", 1, ".", 141, 2630080)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have brought some samples of the lizards the plant preys on back to Zo'Dok.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotFilaments(Quest, QuestGiver, Player)
	end
end

