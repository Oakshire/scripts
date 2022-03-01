--[[
	Script Name	: Quests/Castleview/sowing_beauty.lua
	Script Purpose	: Handles the quest, "Sowing Beauty"
	Script Author	: Scatman
	Script Date	: 2009.10.02
	
	Zone       : Castleview Hamlet
	Quest Giver: Vindain Greenfaith
	Preceded by: Components of Growth (components_of_growth.lua)
	Followed by: Targeting Corruption (targeting_corruption.lua)
--]]

local SowingBeauty = 224

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to plant a Green Wisp in the planter northwest of The Fountain of Valor, just south of the inn.", 1, 100, "Vindain has asked that I take the seeds, soil, and water and plant Green Wisps at the planter boxes around Castleview Hamlet.", 0)
	AddQuestStep(Quest, 2, "I need to plant a Green Wisp in the planter southwest of the inn.", 1, 100, "Vindain has asked that I take the seeds, soil, and water and plant Green Wisps at the planter boxes around Castleview Hamlet.", 0)
	AddQuestStep(Quest, 3, "I need to plant a Green Wisp in the planter north of the bank on its northwestern corner.", 1, 100, "Vindain has asked that I take the seeds, soil, and water and plant Green Wisps at the planter boxes around Castleview Hamlet.", 0)
	AddQuestStep(Quest, 4, "I need to plant a Green Wisp in the planter north of the bank on its northeastern corner.", 1, 100, "Vindain has asked that I take the seeds, soil, and water and plant Green Wisps at the planter boxes around Castleview Hamlet.", 0)
	AddQuestStep(Quest, 5, "I need to plant a Green Wisp in the planter northwest of the scribe's shop.", 1, 100, "Vindain has asked that I take the seeds, soil, and water and plant Green Wisps at the planter boxes around Castleview Hamlet.", 0)
	AddQuestStep(Quest, 6, "I need to plant a Green Wisp in the planter just west of the scribe's shop.", 1, 100, "Vindain has asked that I take the seeds, soil, and water and plant Green Wisps at the planter boxes around Castleview Hamlet.", 0)
	AddQuestStep(Quest, 7, "I need to plant a Green Wisp in the planter north of the armor shop, on the level about the Fountain of Valor.", 1, 100, "Vindain has asked that I take the seeds, soil, and water and plant Green Wisps at the planter boxes around Castleview Hamlet.", 0)
	AddQuestStep(Quest, 8, "I need to plant a Green Wisp in the planter on the northeast corner of the armor shop.", 1, 100, "Vindain has asked that I take the seeds, soil, and water and plant Green Wisps at the planter boxes around Castleview Hamlet.", 0)
	
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_plantedSeed1")
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_plantedSeed2")
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_plantedSeed3")
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_plantedSeed4")
	AddQuestStepCompleteAction(Quest, 5, "step5_complete_plantedSeed5")
	AddQuestStepCompleteAction(Quest, 6, "step6_complete_plantedSeed6")
	AddQuestStepCompleteAction(Quest, 7, "step7_complete_plantedSeed7")
	AddQuestStepCompleteAction(Quest, 8, "step8_complete_plantedSeed8")
	
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain019a.mp3", "", "", 4093998099, 2772552275, Player)
	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, QuestGiver, Player, "Good.  I cannot wait to see how they look.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_plantedSeed1(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have planted a Green Wisp in the planter northwest of The Fountain of Valor.")
	
	if QuestIsComplete(Player, SowingBeauty) then
		seeds_planted(Quest, QuestGiver, Player)
	end
end

function step2_complete_plantedSeed2(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have planted a Green Wisp in the planter southwest of the inn.")
	
	if QuestIsComplete(Player, SowingBeauty) then
		seeds_planted(Quest, QuestGiver, Player)
	end
end

function step3_complete_plantedSeed3(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have planted a Green Wisp in the planter north of the bank on its northwestern corner.")
	
	if QuestIsComplete(Player, SowingBeauty) then
		seeds_planted(Quest, QuestGiver, Player)
	end
end

function step4_complete_plantedSeed4(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have planted a Green Wisp in the planter north of the bank's northeastern corner.")
	
	if QuestIsComplete(Player, SowingBeauty) then
		seeds_planted(Quest, QuestGiver, Player)
	end
end

function step5_complete_plantedSeed5(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I tried to plant a Green Wisp northwest of the scribe's shop but it came to life and attacked me.")
	
	if QuestIsComplete(Player, SowingBeauty) then
		seeds_planted(Quest, QuestGiver, Player)
	end
end

function step6_complete_plantedSeed6(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have planted a Green Wisp in the planter just west of the scribe's shop.")
	
	if QuestIsComplete(Player, SowingBeauty) then
		seeds_planted(Quest, QuestGiver, Player)
	end
end

function step7_complete_plantedSeed7(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have planted a Green Wisp in the planter north of the armor shop, on the level above The Found of Valor.")
	
	if QuestIsComplete(Player, SowingBeauty) then
		seeds_planted(Quest, QuestGiver, Player)
	end
end

function step8_complete_plantedSeed8(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I have planted a Green Wisp in the planter on the northeast corner of the armor shop.")
	
	if QuestIsComplete(Player, SowingBeauty) then
		seeds_planted(Quest, QuestGiver, Player)
	end
end

function seeds_planted(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have planted all of the seeds.")
	
	AddQuestStepChat(Quest, 9, "I need to return to Vindain near The Fountain of Valor.", 1, "I need to return to Vindain and let him know of the planted seeds, especially the one that went wrong.", 0, 2360007)
	AddQuestStepCompleteAction(Quest, 9, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I have spoken with Vindain.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Vindain.")
	UpdateQuestDescription(Quest, "I have planted all of the seeds. One seedling came to life and attacked me.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_plantedSeed1(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_plantedSeed2(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_plantedSeed3(Quest, QuestGiver, Player)
	elseif Step == 4 then
		step4_complete_plantedSeed4(Quest, QuestGiver, Player)
	elseif Step == 5 then
		step5_complete_plantedSeed5(Quest, QuestGiver, Player)
	elseif Step == 6 then
		step6_complete_plantedSeed6(Quest, QuestGiver, Player)
	elseif Step == 7 then
		step7_complete_plantedSeed7(Quest, QuestGiver, Player)
	elseif Step == 8 then
		step8_complete_plantedSeed8(Quest, QuestGiver, Player)
	end
end