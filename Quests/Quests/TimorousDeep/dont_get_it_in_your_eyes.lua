--[[
	Script Name	: Quests/TimorousDeep/dont_get_it_in_your_eyes.lua
	Script Purpose	: Handles the quest, "Don't Get it in Your Eyes"
	Script Author	: Scatman
	Script Date	: 2009.02.22
	
	Zone       : Timorous Deep
	Quest Giver: Tertiary Mak'Ki
	Preceded by: None
	Followed by: Don't Get It in Arozik's Eyes (dont_get_it_in_aroziks_eyes.lua)
--]]


function Init(Quest)
	-- Acid-inscribed Ring
	-- Empowered Belt Buckle
	-- Geo-Parser's Sandals
	-- Lightfoot Boots
	-- Pridefeather Gloves


	AddQuestStepKill(Quest, 1, "I need to collect some acid sacs from the crusty rustbeats in the Timeworn Pools to the far west.", 5, 100, ".", 111, 2630088)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotSacs")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/tertiary_mak_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/makki/makki001.mp3", "", "", 493055833, 1386500229, Player)
	AddConversationOption(conversation, "I will be back soon.")
	StartConversation(conversation, QuestGiver, Player, "Could you? That would help  me greatly.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotSacs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the acid sacs.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these acid sacs back to Tertiary Mak'Ki.", 1, ".", 111, 2630044)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have brought Tertiary Mak'Ki the sacs.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotSacs(Quest, QuestGiver, Player)
	end
end
