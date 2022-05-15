--[[
    Script Name    : Quests/NorthQeynos/delivery_for_thardrin.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.11 05:05:30
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Thardrin Steeleye
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I have to deliver Sneed Galliway's supplies to the Trading Post.", 1, "Sneed Galliway still needs those supplies from the Qeynos Cache.", 1046, 2220027)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "", "", "point", 0, 0, Player)
	AddConversationOption(conversation, "Ugh, that looks heavy.  Guess I'm stuck with it for a bit now though.")
	StartConversation(conversation, QuestGiver, Player, "Of course there is something in it for you! A tip from Sneed Galliway, if you're hasty. Sneed ordered supplies from a trading company last week, and they just arrived. I need them delivered to his trading post down the road.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I delivered Sneed Galliway's supplies.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Thardrin Steeleye's package was delivered safely to Sneed Galliway.")

	UpdateQuestDescription(Quest, "After lugging that heavy crate of supplies from Thardrin to Sneed's Trading Post, my arms burned.  It's just too bad the pay for it didn't load me down more than it did.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
