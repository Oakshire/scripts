--[[
	Script Name	: Quests/TimorousDeep/scout_scouting.lua
	Script Purpose	: Handles the quest, "Scout Scouting"
	Script Author	: Scatman
	Script Date	: 2009.02.27
	
	Zone       : Timorous Deep
	Quest Giver: Arozik Sky'Ki
	Preceded by: Haoaeran Poisons (haoaeran_poisons.lua)
	Followed by: Haoaeran Orders (haoaeran_orders.lua)
--]]


function Init(Quest)
	 -- Band of Weaving
	 -- Barnacled Hoop
	 -- Layered Scale Barbute
	 -- Lightfoot Sash
	 -- Pridefeather Mantle


	AddQuestStep(Quest, 1, "I need to travel south and search for the missing Chrykori Scout.", 1, 100, ".", 0)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_foundScout")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki009.mp3", "", "", 3728908332, 3305312400, Player)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, QuestGiver, Player, "Thank you. Remember, the log book is enough.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_foundScout(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the log book of the missing scout.")
	
	AddQuestStepChat(Quest, 2, "I need to bring this log book to Secondary Arozik Sky'Ki.", 1, ".", 716, 2630081)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Sky'Ki's scout was dead, but I was able to bring his log book back.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_foundScout(Quest, QuestGiver, Player)
	end
end
