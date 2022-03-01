--[[
	Script Name	: Quests/SunkenCity/finding_the_investigator
	Script Purpose	: Handles the quest, "Finding the Investigator"
	Script Author	: Scatman
	Script Date	    : 2009.07.28
	
	Zone       : Sunken City
	Quest Giver: Inquisitor Thorson
	Preceded by: Cataloging Local Critters (cataloging_local_critters.lua)
	Followed by: Taking Back from the Blackshields (taking_back_from_the_blackshields.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak to Investigator Curfeld of the Dismal Rage.", 1, "I need to seek out Investigator Curfeld and speak to him.", 0, 1240083)
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will do so.")
	StartConversation(conversation, QuestGiver, Player, "You can find Investigator Curfeld by going north through the archway, then west and south. He stands past the scorpions you discovered near the gateway to the Graveyard. He knows that additional help is coming, so tell him that I sent you.")
end

function Declined(Quest, QuestGiver, Player)
end


function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken to Investigator Curfeld.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found Investigator Curfeld.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I have found Investigator Curfeld just where Thorson said he would be. Now I will see if the investigator needs my assistance.")
end

function Reload(Quest, QuestGiver, Player, Step)
end