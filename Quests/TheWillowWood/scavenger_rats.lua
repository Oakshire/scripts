--[[
    Script Name    : Quests/TheWillowWood/scavenger_rats.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.15 06:02:02
    Script Purpose : 

        Zone       : TheWillowWood
        Quest Giver: Salinia Brooklily
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill eight of any type of scavengers in the Peat Bog.", 8, 100, "I need to kill eight scavenger rats in the Peat Bog.", 93, 8290026, 8290021)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Peat Bog")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(NPC, Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Farewell Salinia.")
    StartConversation(conversation, QuestGiver, Player, "Thank you for assisting us. If you slay only a few rats it will make a difference. Good luck on your hunt, adventurer")
 	PlayFlavor(NPC, "", "", "thank", 0,0 , Player)
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have killed all eight of the scavengers in the Bog.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I killed eight scavenger rats.")
    UpdateQuestZone(Quest,"Willow Wood")
	
	AddQuestStepChat(Quest, 2, "I need to return to Salinia Brooklily.", 1, "I need to return to Salinia Brooklily in The Willow Wood.", 93, 2370043)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end


function QuestComplete(Quest, QuestGiver, Player)	
	UpdateQuestStepDescription(Quest, 2, "I told Salinia about the scavengers I exterminated.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Salinia Brooklily.")
	
	UpdateQuestDescription(Quest, "I've slain eight scavenger rats in the Peat Bog.  I hope that will help with the overpopulation of the rats there.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	end
	if Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

