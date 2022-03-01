--[[
	Quest Template
	Script Name	: reporting_to_the_ruins.lua
	Script Purpose	: Handles the quest, "Reporting to the Ruins"
	Script Author	: Scatman
	Script Date	: 2009.07.12

        Zone            : The Graveyard
        Quest Giver     : Custodian Zaddar Sullissia
        Preceded by     : Repairing the Ward (repairing_the_ward.lua)
        Followed by     : None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should make my way to the Freeport Ruins and speak to Captain Arellius. I should return to the docks of my home district and use the bell to summon transport outside of Freeport proper.", 1, "I should make my way to the Ruins and speak to to Captain Arellius.", 0, 1270003)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar114.mp3", "", "", 463438268, 1793214191, Player)
	AddConversationOption(conversation, "I'm on my way.")
	StartConversation(conversation, QuestGiver, Player, "Your help in the Ruins is desperately needed. Do not delay too long, for our great city of Freeport is in peril!")
end

function Declined(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I made my way to the Ruins and have spoken to Captain Arellius.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have made my way to the Ruins and reported to Captain Arellius.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I found the Ruins and have reported to Captain Arellius. I will now assist in the defense of Freeport.")
end

function Reload(Quest, QuestGiver, Player, Step)
end