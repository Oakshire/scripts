--[[
	Script Name	: Quests/TimorousDeep/the_ends_justify_the_means.lua
	Script Purpose	: Handles the quest, "The Ends Justify the Means"
	Script Author	: Scatman
	Script Date	: 2009.02.07
	
	Zone       : Timorous Deep
	Quest Giver: Civ-Parser Di'Xin
	Preceded by: Chrykori Relics (chrykori_relics.lua)
	Followed by: None
--]]


function Init(Quest)
	-- Layered Scale Mantle
	-- Lightfoot Gloves
	-- Timeworn Helm
	-- Timeworn Hoop
	-- Timeworn Stud


	AddQuestStepKill(Quest, 1, "I need to collect some scavenged relics from the Haoaeran scavengers in the Timeworn Pools to the west.", 4, 100, ".", 368, 2630086)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotRelics")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/civ-parser_di_xin/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dixin/dixin008.mp3", "", "", 76732508, 856374115, Player)
	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, QuestGiver, Player, "That would be wonderful. It is a shame that any sentient can be so careless when it comes to something as important as history.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotRelics(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the scavenged relics.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these relics back to Civ-Parser Di'Xin.", 1, ".", 368, 2630045)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I brought relics obtained from the Haoaeran scavengers back to Civ-Parser Di'Xin.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotRelics(Quest, QuestGiver, Player)
	end
end
