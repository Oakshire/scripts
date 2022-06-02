--[[
	Script Name	: Quests/WillowWood/a_tribute_to_ulinir.lua
	Script Purpose	: Handles the quest, "A Tribute to Ulinir"
	Script Author	: Scatman
	Script Date	: 2009.09.26
	
	Zone       : The Willow Wood
	Quest Giver: Davyn Thornbranch
	Preceded by: Tribute Flowers (tribute_flowers.lua)
	Followed by: None
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to place Ulinir's tribute on his grave in the northeastern edge of the Forest Ruins.", 1, 100, "Davyn has asked me to deliver Ulinir's tribute to his grave in the Forest Ruins.", 0) 
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
    UpdateQuestZone(Quest,"Forest Ruins")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch024.mp3", "", "", 1462985886, 2661740448, Player)
	AddConversationOption(conversation, "I'll be careful.")
	StartConversation(conversation, QuestGiver, Player, "Be cautious.  The Forest Ruins are not the safe haven that the Willow Wood is.")
end

function Declined(Quest, QuestGiver, Player)
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have placed Ulinir's tribute.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered Ulinir's tribute.")
	UpdateQuestDescription(Quest, "I have placed Ulinir's tribute as Davyn Thornbranch requested. I hope that I inspire such friendship in others.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end