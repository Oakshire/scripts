--[[
	Script Name	: Quests/TimorousDeep/further_assistance_to_chrykori_island.lua
	Script Purpose	: Handles the quest, "Further Assistance to Chrykori Island"
	Script Author	: Scatman
	Script Date	: 2009.02.06
	
	Zone       : Timorous Deep
	Quest Giver: Primary Conzuk Zum'Ha
	Preceded by: Disrupting Haoaeran Rituals (disrupting_haoaeran_rituals.lua)
	Followed by: None
--]]


function Init(Quest)
	


	AddQuestStepChat(Quest, 1, "I need to report to Secondary Arozik Sky'Ki on the Trythec Loft to the southwest.", 1, ".", 0, 2630081)
	AddQuestStepCompleteAction(Quest, 1, "quest_complete")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/primary_conzuk_zum_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zumha/zumha008.mp3", "", "", 1945530557, 2152827601, Player)
	AddConversationOption(conversation, "I will do as I can.")
	StartConversation(conversation, QuestGiver, Player, "You are a fine soldier, obedient and skilled, and I am sure you will help him in whatever way you can. Correct?")
end

function Declined(Quest, QuestGiver, Player)
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have reported to Secondary Arozik Sky'Ki.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end
