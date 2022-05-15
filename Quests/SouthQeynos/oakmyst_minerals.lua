--[[
    Script Name    : Quests/SouthQeynos/oakmyst_minerals.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.14 07:05:17
    Script Purpose : 

        Zone       : SouthQeynos
        Quest Giver: Hegrenn
        Preceded by: None
        Followed by: 
--]]
function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to hunt Oakmyst royal defenders in Oakmyst Forest.", 3, 60, "I need to go to the Oakmyst Forest and slay some Oakmyst royal defenders to try to find some type of mineral.", 187, 1950047)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Oakmyst Forest")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "Good! Bring them back here as soon as you have them.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've gathered three pieces of an unknown mineral.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered the mineral Blacksmith Hegrenn was interested in.")
    UpdateQuestZone(Quest,"South Qeynos")
	AddQuestStepChat(Quest, 2, "Deliver the mineral to Blacksmith Hegrenn.", 1, "Blacksmith Hegrenn will want to see these minerals.  She was in the Bag 'n Barrel on the top floor in South Qeynos.", 187, 2310038)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've returned to Hegrenn with the minerals.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've given Hegrenn the minerals she requested.  She seemed quite pleased about the discorvery, but asked me to keep it to myself.")

	UpdateQuestDescription(Quest, "There was more to all of this than just gossip. Sure enough I found an unknown mineral. Hegrenn was quite pleased, but asked me to keep the news to myself.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end