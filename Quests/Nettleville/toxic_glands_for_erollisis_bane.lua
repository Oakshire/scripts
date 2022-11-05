--[[
	Script Name	: Quests/Nettleville/toxic_glands_for_erollisis_bane.lua
	Script Purpose	: Handles the quest, "Toxic Glands for Erollisi's Bane"
	Script Author	: Scatman
	Script Date	: 2009.08.12
	
	Zone       : Nettleville
	Quest Giver: Foster Graham (2330025)
	Preceded by: None
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill some toxic bog slugs.", 6, 100, "I must slay six toxic bog slugs for their poison glands.", 2515, 1980006,8290031) 
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledSlugs")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/foster_graham/qey_village01/fostergraham002.mp3", "", "", 196177219, 2787738591, Player)
	AddConversationOption(conversation, "I will return with your poison.")
	StartConversation(conversation, QuestGiver, Player, "Thank you, friend!  Your plain looks veil a superior heart.  The secret ingredient comes from the gland of the toxic bog slug, which crawls about the local peat bog.  I need several of the toxic glands.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledSlugs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed some toxic bog slugs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected six toxic poison glands.")
	UpdateQuestZone(Quest, "Nettleville")
	
	AddQuestStepChat(Quest, 2, "I must return to Foster Graham.", 1, "I need to bring these toxic glands to Foster Graham in Nettleville.", 0, 2330025) 
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I returned to Foster Graham.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Foster Graham.")
	UpdateQuestDescription(Quest, "I have collected and delivered the six toxic glands for Foster Graham of Nettleville. While condescending at least he pays well.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledSlugs(Quest, QuestGiver, Player)
	end
end