--[[
	Script Name	: Quests/Darklight/one_mans_waste.lua
	Script Purpose	: Handles the quest, "One Man's Waste..."
	Script Author	: Scatman
	Script Date	: 2009.02.02
	
	Zone       : Darklight Wood
	Quest Giver: Ilmtar D'Viervs
	Preceded by: What's in Demand? (whats_in_demand.lua)
	Followed by: Useful Materials (useful_materials.lua)
--]]


function Init(Quest)


	-- discarded weapon
	AddQuestStepObtainItem(Quest, 1,  "I need to collect six old weapons.", 6, 100,  ".", 5,  4583)

	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotWeapons")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar007.mp3", "", "", 1159271523, 3598851329, Player)
	AddConversationOption(conversation, "We'll see what I dig up.")
	StartConversation(conversation, QuestGiver, Player, "A ring is a ring is a ring, but the ring of a king... now that's something someone will pay for.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotWeapons(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the old weapons.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these weapons to Ilmtar D'Viervs.", 1, ".", 5, 340123)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	-- remove all six 'discarded weapon'
	UpdateQuestDescription(Quest, "I have collected the weapons for Ilmtar.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotWeapons(Quest, QuestGiver, Player)
	end
end
