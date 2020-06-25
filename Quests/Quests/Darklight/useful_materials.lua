--[[
	Script Name	: Quests/Darklight/useful_materials.lua
	Script Purpose	: Handles the quest, "Useful Materials"
	Script Author	: Scatman
	Script Date	: 2009.02.02
	
	Zone       : Darklight Wood
	Quest Giver: Ilmtar D'Viervs
	Preceded by: One Man's Waste... (one_mans_waste.lua)
	Followed by: Trinkets (trinkets.lua)
--]]


function Init(Quest)
	-- Coarse Cloth Sleeves
	-- Sanctified Helm
	-- Scale Leaf Gloves
	-- Shingled Helm
	-- Stone Rivet Sabatons
	-- Stitched Tracking Cap 


	-- discarded wood
	AddQuestStepObtainItem(Quest, 1,  "I need to collect six pieces of wood for Ilmtar D'Viervs.", 6, 100,  ".", 830,  4584)

	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotWood")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar011.mp3", "", "", 2167619330, 3237098781, Player)
	AddConversationOption(conversation, "I'll return.")
	StartConversation(conversation, QuestGiver, Player, "Good.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotWood(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the wood.")
	
	AddQuestStepChat(Quest, 2, "I need to bring the wood back to Ilmtar.", 1, ".", 830, 340123)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	-- remove all six 'discarded wood'
	UpdateQuestDescription(Quest, "I have brought Ilmtar the wood he asked for.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotWood(Quest, QuestGiver, Player)
	end
end
