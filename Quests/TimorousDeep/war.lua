--[[
	Script Name	: Quests/TimorousDeep/war.lua
	Script Purpose	: Handles the quest, "War"
	Script Author	: Scatman
	Script Date	: 2009.02.27
	
	Zone       : Timorous Deep
	Quest Giver: Arozik Sky'Ki
	Preceded by: Decoder Glyph (decoder_glyph.lua)
	Followed by: None
--]]


function Init(Quest)


	AddQuestStepChat(Quest, 1, "I need to speak with Tertiary Dih'Ha.", 1, ".", 0, 2630108)
	AddQuestStepCompleteAction(Quest, 1, "quest_complete")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/arozik_sky_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/skyki/skyki021.mp3", "", "", 3157661063, 692355450, Player)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "Thulwun Station needs our help. Be strong, " .. GetName(Player) .. ". I will see about sending further reinforcements in your wake.")
end

function Declined(Quest, QuestGiver, Player)
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have met up with Tertiary Dih'Ha.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end
