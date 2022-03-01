--[[
	Script Name	: Quests/TimorousDeep/prison_break.lua
	Script Purpose	: Handles the quest, "Prison Break"
	Script Author	: Scatman
	Script Date	: 2009.02.27
	
	Zone       : Timorous Deep
	Quest Giver: Bezok Myli'Ki	
	Preceded by: None
	Followed by: None
--]]


function Init(Quest)
	 -- Channeler's Loop
	 -- Earthen Bracer
	 -- Feathered Turf-hunter Cap
	 -- Standard-issue Soldier's Ring


	AddQuestStepChat(Quest, 1, "I need to free some captives held in Pyrrin Roost.", 5, ".", 1010, 2630104, 2630096, 2630131, 2630094)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_freedSarnaks")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/bezok_myli_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/myliki/myliki001.mp3", "", "", 3631592040, 195858381, Player)
	AddConversationOption(conversation, "I will return quickly.")
	StartConversation(conversation, QuestGiver, Player, "Excellent.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_freedSarnaks(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have freed some captives in Pyrrin Roost.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Bezok Myli'Ki.", 1, ".", 0, 2630098)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have freed the sarnak held captive in Pyrrin Roost.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_freedSarnaks(Quest, QuestGiver, Player)
	end
end
