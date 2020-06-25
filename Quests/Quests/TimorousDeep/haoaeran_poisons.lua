--[[
	Script Name	: Quests/TimorousDeep/haoaeran_poisons.lua
	Script Purpose	: Handles the quest, "Haoaeran Poisons"
	Script Author	: Scatman
	Script Date	: 2009.02.27
	
	Zone       : Timorous Deep
	Quest Giver: Arozik Sky'Ki
	Preceded by: None
	Followed by: Scout Scouting (scout_scouting.lua)
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "I need poison glands from the skittering monitors on Trythec Loft.", 6, 100, ".", 336, 2630070)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotGlands")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki003.mp3", "", "", 1707113595, 2002626119, Player)
	AddConversationOption(conversation, "I will handle myself carefully.")
	StartConversation(conversation, QuestGiver, Player, "Good. Careful handling the monitors and their sacs; remember, we don't have an antidote yet, and I do not need another invalid to care for. Return once you have enough for a thorough study.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotGlands(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the poison glands.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these poison glands to Secondary Arozik Sky'Ki.", 1, ".", 336, 2630081)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have brought the poison glands of the skittering monitors back to Secondary Arozik Sky'Ki.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotGlands(Quest, QuestGiver, Player)
	end
end
