--[[
	Script Name	: Quests/TimorousDeep/kuvis_vengeance.lua
	Script Purpose	: Handles the quest, "Ku'Vi's Vengeance"
	Script Author	: Scatman
	Script Date	: 2009.02.27
	
	Zone       : Timorous Deep
	Quest Giver: Craewem Ku'Vi
	Preceded by: Pluck Them of Their Pride (pluck_them_of_their_pride.lua)
	Followed by: None
--]]


function Init(Quest)
	 -- Geo-Parser's Robe
	 -- Layered Scale Breastplate
	 -- Pridefeather Headdress
	 -- Raptor-scaled Tunic
	 -- Ritualist's Tunic
	 -- Turf-hunter Tunic
	 -- Thulwun Defender's Breastplate


	AddQuestStepKill(Quest, 1, "I need to kill Turf-Hunter Valcryn.", 1, 100, ".", 611, 2630087)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedValcryn")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/craewen_ku_vi/_exp04/exp04_rgn_timorous_deep/chrykori_tie/kuvi/kuvi005.mp3", "", "", 3507521870, 672894658, Player)
	AddConversationOption(conversation, "I will return when I have his head.")
	StartConversation(conversation, QuestGiver, Player, "Thank you. Seeing him fall will be a rare joy.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedValcryn(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain Turf-Hunter Valcryn.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Craewen Ku'Vi.", 1, ".", 0, 2630073)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have slain Turf-Hunter Valcryn and brought his head and pride feathers to Craewen Ku'Vi.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedValcryn(Quest, QuestGiver, Player)
	end
end
