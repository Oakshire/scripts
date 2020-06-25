--[[
	Script Name	: Quests/Darklight/whats_in_demand.lua
	Script Purpose	: Handles the quest, "What's in Demand?"
	Script Author	: Scatman
	Script Date	: 2009.02.02
	
	Zone       : Darklight Wood
	Quest Giver: Ilmtar D'Viervs
	Preceded by: None
	Followed by: One Man's Waste... (one_mans_waste.lua)
--]]


function Init(Quest)
	-- Merchant's Pouch


	AddQuestStepKill(Quest, 1, "I need to collect ten bone fragments from the zombies around T'Vatar Post.", 10, 100, ".", 418, 340126, 340117, 340096, 340098, 340118, 340114)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotBones")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar003.mp3", "", "", 2929478773, 1922139925, Player)
	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, QuestGiver, Player, "Then I await your return.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotBones(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Bone Fragment Found")
	
	AddQuestStepChat(Quest, 2, "I need to bring these bone fragments to Ilmtar.", 1, ".", 418, 340123)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have given Ilmtar the bones he requested.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotBones(Quest, QuestGiver, Player)
	end
end
