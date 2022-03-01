--[[
	Script Name	: Quests/Darklight/purposeful_trinkets.lua
	Script Purpose	: Handles the quest, "Purposeful Trinkets"
	Script Author	: Scatman
	Script Date	: 2009.02.03
	
	Zone       : Darklight Wood
	Quest Giver: Laexyra Y'Barriath
	Preceded by: None
	Followed by: Public Service (public_service.lua)
--]]


function Init(Quest)
	-- Oiled Leggings
	-- Padded Leg Chains
	-- Copper Riveted Legplates
	-- Hardened Fungus Fragment


	-- soldier's trinket
	AddQuestStepObtainItem(Quest, 1,  "I need to collect five soldier's trinkets.", 5, 100,  ".", 368,  8967)

	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotTinkets")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra007.mp3", "", "", 2780056941, 3072789247, Player)
	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, QuestGiver, Player, "Good.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotTinkets(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the trinkets.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Laexyra Y'Barriath.", 1, ".", 0, 340109)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	-- remove all 5 'soldier's trinket's
	UpdateQuestDescription(Quest, "I have collected the trinkets for Laexyra Y'Barriath.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotTinkets(Quest, QuestGiver, Player)
	end
end
