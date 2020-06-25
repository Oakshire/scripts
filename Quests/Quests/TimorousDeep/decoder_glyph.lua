--[[
	Script Name	: Quests/TimorousDeep/decoder_glyph.lua
	Script Purpose	: Handles the quest, "Decoder Glyph"
	Script Author	: Scatman
	Script Date	: 2009.02.27
	
	Zone       : Timorous Deep
	Quest Giver: Arozik Sky'Ki
	Preceded by: Haoaeran Orders (haoaeran_orders.lua)
	Followed by: War (war.lua)
--]]


function Init(Quest)
	 -- Channeler's Belt
	 -- Pyrrin Amulet
	 -- Ritualist's Mantle
	 -- Raptor-scaled Cowl


	AddQuestStepKill(Quest, 1, "I need a decoder glyph from a Haoaeran turf-hunter.", 1, 100, ".", 373, 2630077)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotGlyph")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki017.mp3", "", "", 709686282, 1141832013, Player)
	AddConversationOption(conversation, "I will be swift.")
	StartConversation(conversation, QuestGiver, Player, "I await your return.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotGlyph(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the decoder glyph.")
	
	AddQuestStepChat(Quest, 2, "I need to bring the glyph to Secondary Arozik Sky'Ki.", 1, ".", 373, 2630081)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I obtained a Haoaeran decoder glyph and brought it back to Secondary Arozik Sky'Ki.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotGlyph(Quest, QuestGiver, Player)
	end
end
