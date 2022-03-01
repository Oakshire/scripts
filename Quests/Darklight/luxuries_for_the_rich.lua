--[[
	Script Name	: Quests/Darklight/luxuries_for_the_rich.lua
	Script Purpose	: Handles the quest, "Luxuries for the Rich"
	Script Author	: Scatman
	Script Date	: 2009.02.02
	
	Zone       : Darklight Wood
	Quest Giver: Ilmtar D'Viervs
	Preceded by: Trinkets (trinkets.lua)
	Followed by: More Luxuries (more_luxuries.lua)
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "I need the scales from eight snakes for Ilmtar D'Viervs.", 8, 100, ".", 98, 340135, 340134, 340155, 340167)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotScales")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar018.mp3", "", "", 805456445, 276277273, Player)
	AddConversationOption(conversation, "I will return when I get the scales.")
	StartConversation(conversation, QuestGiver, Player, "I suppose they DO look good. And if the death of four or five snakes can increase the price of a pair of shoes by five-hundred percent I guess that's just death filling an important market niche. Ah well.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotScales(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the snake scales for Ilmtar.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these scales to Ilmtar D'Viervs.", 1, ".", 98, 340123)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have collected the snake scales for Ilmtar D'Viervs.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotScales(Quest, QuestGiver, Player)
	end
end
