--[[
	Script Name		:	Quests/Stonestair/incantation_oration.lua
	Script Purpose	:	Handles the quest, "Incantation Oration"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	6/22/2018
	Script Notes	:	

	Zone			:	Stonestair Byway
	Quest Giver		:	
	Preceded by		:	tweezing_kerra.lua
	Followed by		:	abolishing_curiosity.lua
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Return to Vess at the dock and speak with him as Sevri asked.", 1, "Speak with Vess at the dock again.", 11, 1350010)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/sevri_il_bethod/fprt_hood02/sevri_ilbethod011.mp3", "", "", 1345707092, 3707746556, Player)
	AddConversationOption(conversation, "Alright, I'll do that. Good luck with what you're making.", "dlg_30_4")
	StartConversation(conversation, QuestGiver, Player, "Wonderful. I'll look into adding this as a component. In the meantime, why don't you head back and talk to Vess? I'm sure he'd like to explain a bit more about what we've gone through here.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've spoken to Vess.")
	
	AddQuestStepChat(Quest, 2, "I must learn the  from Vess.", 1, "Speak with Vess at the dock again.", 11, 1350010)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've learned the incantation from Vess.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken with Vess Al'Ishni again.")

	UpdateQuestDescription(Quest, "Vess has taught me an incantation I'll need to use to seal the entrance.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	end
end
