--[[
	Script Name	: Quests/TimorousDeep/stuffed_gorger_claws.lua
	Script Purpose	: Handles the quest, "Stuffed Gorger Claws"
	Script Author	: Scatman
	Script Date	: 2009.02.06
	
	Zone       : Timorous Deep
	Quest Giver: Taroche Dry'Zok
	Preceded by: None
	Followed by: Delivery to a Veteran (delivery_to_a_veteran.lua)
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "I need some grit gorger claws.", 4, 100, ".", 78, 2630022)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotClaws")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/taroche_dry_zok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dryzok/dryzok001.mp3", "", "", 3402230050, 3099804897, Player)
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, QuestGiver, Player, "Excellent. Return to me once you have them.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotClaws(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the claws.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these claws to Taroche Dry'Zok", 1, ".", 77, 2630014)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have brought Taroche Dry'Zok the grit gorger claws he asked for.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotClaws(Quest, QuestGiver, Player)
	end
end
