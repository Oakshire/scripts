--[[
	Script Name	: Quests/TimorousDeep/chrykori_relics.lua
	Script Purpose	: Handles the quest, "Chrykori Relics"
	Script Author	: Scatman
	Script Date	: 2009.02.07
	
	Zone       : Timorous Deep
	Quest Giver: Civ-Parser Di'Xin
	Preceded by: None
	Followed by: The Ends Justify the Means (the_ends_justify_the_means.lua)
--]]


function Init(Quest)


	-- unearthed relic
	AddQuestStepObtainItem(Quest, 1,  "I need some unearthed relics from the shore near Chrykori Village.", 6, 100,  ".", 371,  10523)

	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotRelics")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/civ-parser_di_xin/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dixin/dixin004.mp3", "", "", 1900559270, 3494700386, Player)
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, QuestGiver, Player, "I am glad to hear it. I am sure you can find the relics anywhere on the shore near Chrykori Village. Find some and bring them back to me, please.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotRelics(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have obtained the relics.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these relics back to Civ-Parser Di'Xin.", 1, ".", 371, 2630045)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	-- remove 'unearthed relic'
	UpdateQuestDescription(Quest, "I have brought the artifacts I dug up to Civ-Parser Di'Xin.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotRelics(Quest, QuestGiver, Player)
	end
end
