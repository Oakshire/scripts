--[[
	Script Name	: Quests/Darklight/more_luxuries.lua
	Script Purpose	: Handles the quest, "More Luxuries"
	Script Author	: Scatman
	Script Date	: 2009.02.02
	
	Zone       : Darklight Wood
	Quest Giver: Ilmtar D'Viervs
	Preceded by: Luxuries for the Rich (luxuries_for_the_rich.lua)
	Followed by: The Mother Lode (the_mother_lode.lua)
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "I need to collect the scales from eight scar wurms for Ilmtar D'Viervs.", 8, 100, "Ilmtar D'Viervs needs more snake scales, this time from the scar wurms in Innoruuk's Scar. He also wants pheromone sacs from the male scar wurms.", 172, 340104, 340101, 340102, 340103)
	AddQuestStepKill(Quest, 2, "I need to collect pheromone sacs from the scar wurms.", 4, 35, "Ilmtar D'Viervs needs more snake scales, this time from the scar wurms in Innoruuk's Scar. He also wants pheromone sacs from the male scar wurms.", 187, 340104, 340101, 340102, 340103)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotScales")
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_gotSacs")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/ilmtar_d_viervs/darklight_wood/tvatar_post/ilmtar/ilmtar024.mp3", "", "", 3218544480, 2129552018, Player)
	AddConversationOption(conversation, "I'll return.", "dlg_11_6")
	StartConversation(conversation, QuestGiver, Player, "Great. I'll be here working on a method of distributing the pheromone to use once you've collected the sacs.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotScales(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the scales.")
	
	if QuestIsComplete(Player, 95) then
		multiple_steps_complete(Quest, QuestGiver, Player)
	end
end

function step2_complete_gotSacs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected the pheromone.")
	
	if QuestIsComplete(Player, 95) then
		multiple_steps_complete(Quest, QuestGiver, Player)
	end
end

function multiple_steps_complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I need to give Ilmtar the scar wurm scales and pheromone sacs.")
	
	AddQuestStepChat(Quest, 3, "I need to bring these scales and sacs back to Ilmtar D'Viervs.", 1, "I need to bring these items back to Ilmtar D'Viervs", 172, 340123)
	AddQuestStepCompleteAction(Quest, 3, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have given Ilmatar the scales and pheromone sacs from the scar wurms.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotScales(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_gotSacs(Quest, QuestGiver, Player)
	end
end
