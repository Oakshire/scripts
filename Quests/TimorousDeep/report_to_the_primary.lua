--[[
	Script Name	: Quests/TimorousDeep/report_to_the_primary.lua
	Script Purpose	: Handles the quest, "Report to the Primary"
	Script Author	: Scatman
	Script Date	: 2009.02.06
	
	Zone       : Timorous Deep
	Quest Giver: Tykor Gi'Lok
	Preceded by: Curious Ore (curious_ore.lua)
	Followed by: Disrupting Haoaeran Studies (disrupting_haoaeran_studies.lua)
--]]


function Init(Quest)
	-- Acid-Carved Bracer
	-- Empowered Bracelet
	-- Sand-scoured Armguards
	-- Tykor's Bracers
	-- Zum'Ha's Armwraps


	AddQuestStepChat(Quest, 1, "I must speak with Primary Conzuk Zum'Ha in Chrykori Village, up the ramp to the north.", 1, ".", 0, 2630042)
	AddQuestStepCompleteAction(Quest, 1, "quest_complete")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/tykor_gi_lok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/gilok/gilok007.mp3", "", "", 4113737431, 1405861806, Player)
	AddConversationOption(conversation, "Hopefully it will be revealed then.")
	StartConversation(conversation, QuestGiver, Player, "This only supports my claims. The spirocs are not so empty headed as to think this will be of any use to them... It stinks of a greater design!")
end

function Declined(Quest, QuestGiver, Player)
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have shown Primary Conzuk Zum'Ha the ore sample.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end
