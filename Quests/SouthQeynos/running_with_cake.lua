--[[
    Script Name    : Quests/SouthQeynos/running_with_cake.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.02 08:06:10
    Script Purpose : 

        Zone       : SouthQeynos
        Quest Giver: Tibby Copperpot
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak with Harold Dunstan.", 1, "I should get these baked goods from Tibby to Harold Dunstan at Irontoe's East in North Qeynos.", 299, 2220095)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"North Qeynos")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll be sure Harold gets these.")
	StartConversation(conversation, QuestGiver, Player, "Splended! I am so glad to hear it!  Here, I have a bundle goodies all put together for Harold at Irontoes East in the northern part of the city.  Please be careful not to squish them- we are trying to prove we have the most scrumptious treats around!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end
function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Harold.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have taken the baked goods from Tibby to Harold.")
    UpdateQuestZone(Quest,"South Qeynos")
	AddQuestStepChat(Quest, 2, "I need to let Tibby know her delivery has been made.", 1, "Tibby Copperpot will want to know her pastry delivery made it safely.  She is at the Food on Foot in South Qeynos", 11, 2310008)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned to Tibby.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Tibby was quite pleased to hear that her delivery was so well recieved.")

	UpdateQuestDescription(Quest, "I have delivered the baked goods from Tibby to Harold at Irontoe's East in North Qeynos. Harold is very excited to have such variety in his store and hopes to attract much more business. A few drinks and bread for my efforts were well worth it.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
