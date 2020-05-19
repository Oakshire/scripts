--[[
	Script Name	: Quests/Nettleville/vida_needs_a_new_broom.lua
	Script Purpose	: Handles the quest, "Vida Needs a New Broom"
	Script Author	: Scatman
	Script Date	: 2009.08.12
	
	Zone       : Nettleville
	Quest Giver: Vida Sweeps
	Preceded by: None
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find Tawli Whiskwind.", 1, "I need to find Tawli Whiskwind in the Baubbleshire and pick up Vida's new broom.", 0, 2380047)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeWithTawli")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/vida_sweeps/qey_village01/vidasweeps002.mp3", "", "", 1651808120, 3255633748, Player)
	AddConversationOption(conversation, "I'll go over to the Baubbleshire and look for her.")
	StartConversation(conversation, QuestGiver, Player, "Great!  I need you to pick up my new broom. Don't worry! It's already paid for; I just haven't picked it up. Tawli Whiskwind, a halfling lass in the Baubbleshire, should have it ready for me. You may have a difficult time finding her -- she's always running around looking for the finest materials for her brooms.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeWithTawli(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found Tawli Whiskwind.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Tawli Whiskwind and picked up the new broom for Vida.")
	UpdateQuestZone(Quest, "Nettleville")
	
	AddQuestStepChat(Quest, 2, "I should return to Vida Sweeps.", 1, "I should get this new broom to Vida in Nettleville.", 0, 2330011) 
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I gave the new broom to Vida Sweeps.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave the new broom to Vida and received the dusty blue stone in payment.")
	UpdateQuestDescription(Quest, "Vida seems happy with the new broom and put it to use right away. She gave me the dusty blue stone and suggested I may want to ask a mineral expert about it.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_SpokeWithTawli(Quest, QuestGiver, Player)
	end
end