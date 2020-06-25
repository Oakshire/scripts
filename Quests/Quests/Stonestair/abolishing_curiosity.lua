--[[
	Script Name		:	Quests/Stonestair/abolishing_curiosity.lua
	Script Purpose	:	Handles the quest, "Abolishing Curiosity"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	6/22/2018
	Script Notes	:	

	Zone			:	Stonestair Byway
	Quest Giver		:	
	Preceded by		:	incantation_oration.lua
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak with Sevri and pick up the herbal mixture from her.", 1, "Speak with Sevri and pick up the mixture she's created.", 11, 1350011)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni045.mp3", "", "", 1857671823, 602774054, Player)
	AddConversationOption(conversation, "I wish you well, Vess.")
	StartConversation(conversation, QuestGiver, Player, "That is correct. I know we can count on you. Good luck, " .. GetName(Player) .. ".")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've picked up the herbal mixutre from Sevri.")
	
	AddQuestStepLocation(Quest, 2, "Enact the barrier.", 5, "Speak with Sevri and pick up the mixture she's created.", 0, 40, -4, -59)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've completed the incantation.")
	
	AddQuestStepChat(Quest, 3, "I need to return to Vess to let him know it is done.", 1, "Speak with Sevri and pick up the mixture she's created.", 11, 1350010)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I've completed the incantation and the barrier looks to be intact. Vess, Sevri, and the others affiliated with the Abbatoirs should now have some privacy, away from the prying eyes of the Stonestair inhabitants.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
