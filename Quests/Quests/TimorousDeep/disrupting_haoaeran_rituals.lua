--[[
	Script Name	: Quests/TimorousDeep/disrupting_haoaeran_rituals.lua
	Script Purpose	: Handles the quest, "Disrupting Haoaeran Rituals"
	Script Author	: Scatman
	Script Date	: 2009.02.06
	
	Zone       : Timorous Deep
	Quest Giver: Primary Conzuk Zum'Ha
	Preceded by: Disrupting Haoaeran Studies (disrupting_haoaeran_studies.lua)
	Followed by: Further Assistance to Chrykori Island (further_assistance_to_chrykori_island.lua)
--]]


function Init(Quest)
	-- Earring of Zum'Ha
	-- Ritualist's Skullcap
	-- Timeworn Necklace


	AddQuestStepKill(Quest, 1, "I need to interrupt the Haoaeran rituals being performed south of the Timeworn Pools.", 1, 100, ".", 611, 2630090)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_interruptedRituals")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(Player, "voiceover/english/rok_questvo/primary_conzuk_zum_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zumha/zumha005.mp3", "", "", 3636164534, 195709571, Player)
	AddConversationOption(conversation, "I will be as swift as I can.")
	StartConversation(conversation, QuestGiver, Player, "And be swift about it! There's obviously far more to the spiroc than we had thought. The more " .. GetName(Spawn) .. ". we give the Haoaerans to experiment with artifacts of power, the more likely they are to turn this power against us -- effectively!")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_interruptedRituals(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the power infused Haoaeran.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Primary Zum'Ha.", 1, ".", 0, 2630042)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have stopped the strange ritual.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_interruptedRituals(Quest, QuestGiver, Player)
	end
end
