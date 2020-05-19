--[[
	Script Name	: Quests/ForestRuins/news_for_germain.lua
	Script Purpose	: Handles the quest, "News for Germain"
	Script Author	: Scatman
	Script Date	: 2009.04.25
	
	Zone       : The Forest Ruins
	Quest Giver: Acting Lieutenant Germain
	Preceded by: None
	Followed by: Favors (favors.lua)
--]]

function Init(Quest)


	-- machine parts
	AddQuestStepObtainItem(Quest, 1,  "I need to check west of the ruins for any sign of Del Varun. He was supposed to be near the pond on the western end of the ruins.", 1, 100,  "Lieutenant Germain has asked that I search for Del Varun - a scout assigned to the Forest Ruins.", 0,  DEL_VARUNS_PACK)

	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_FoundPack")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "Don't be foolish. Don't get yourself hurt, but if you notice anything that might lead us to him, please let me know.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_FoundPack(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found Del Varun's pack.")
	
	AddQuestStepChat(Quest, 2, "I should see what I can find in Del Varun's pack (Dev note: Speak to Germain for now).", 1, "Lieutenant Germain has asked that I search for Del Varun, a scout assigned to the Forest Ruins.", 0, 1960011)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_InspectedPack")
end

function Step2_Complete_InspectedPack(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have read Del Varun's log.")

	AddQuestStepChat(Quest, 3, "I should investigate the strange plants north of the pond that Del Varun spoke of.", 1, "Lieutenant Germain has asked that I search for Del Varun, a scout assigned to the Forest Ruins.", 0, 1960011)
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_InvestigatedPlants")
end

function Step3_Complete_InvestigatedPlants(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I witnessed the strange plants that Del Varun spoke of. I collected a leaf sample from one of them.")

	AddQuestStepChat(Quest, 4, "I should take this plant sample back to Lieutenant Germain.", 1, "Lieutenant Germain has asked that I search for Del Varun, a scout assigned to the Forest Ruins.", 2102, 1960011)
	AddQuestStepCompleteAction(Quest, 4, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
--remove pack
	UpdateQuestDescription(Quest, "I found Del Varun's satchel and log. The log led me to a strange phenomenon north of the pond on the western side of the ruins.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_GotMachineParts(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_InspectedPack(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_InvestigatedPlants(Quest, QuestGiver, Player)
	end
end
