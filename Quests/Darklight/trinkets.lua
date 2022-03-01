--[[
	Script Name	: Quests/Darklight/trinkets.lua
	Script Purpose	: Handles the quest, "trinkets.lua"
	Script Author	: Scatman
	Script Date	: 2009.02.02
	
	Zone       : Darklight Wood
	Quest Giver: Ilmtar D'Viervs
	Preceded by: Useful Materials (useful_materials.lua)
	Followed by: Luxuries for the Rich (luxuries_for_the_rich.lua)
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "I need eight pairs of screecher teeth for Ilmtar D'Viervs.", 8, 100, ".", 167, 340131, 340163, 340129, 340130, 340133)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotTeeth")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar015.mp3", "", "", 3602136713, 273222269, Player)
	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, QuestGiver, Player, "Good is good.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotTeeth(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the screecher teeth for Ilmtar.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these screecher teeth to Ilmtar D'Viervs.", 1, ".", 167, 340123)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have collected the screecher teeth for Ilmtar.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotTeeth(Quest, QuestGiver, Player)
	end
end
