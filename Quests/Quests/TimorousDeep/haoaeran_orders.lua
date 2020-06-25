--[[
	Script Name	: Quests/TimorousDeep/haoaeran_orders.lua
	Script Purpose	: Handles the quest, "Haoaeran Orders"
	Script Author	: Scatman
	Script Date	: 2009.02.27
	
	Zone       : Timorous Deep
	Quest Giver: Arozik Sky'Ki
	Preceded by: Scout Scouting (scout_scouting.lua)
	Followed by: Decoder Glyph (decoder_glyph.lua)
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "I need Haoaeran orders from the spiroc to the south.", 1, 25, ".", 374, 2630074)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotOrders")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki013.mp3", "", "", 248677146, 615720280, Player)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, QuestGiver, Player, "Thank you.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotOrders(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the Haoaeran orders.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these orders back to Secondary Arozik Sky'Ki.", 1, ".", 374, 2630081)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I obtained a set of Haoaeran orders and brought them to Secondary Sky'Ki.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotOrders(Quest, QuestGiver, Player)
	end
end
