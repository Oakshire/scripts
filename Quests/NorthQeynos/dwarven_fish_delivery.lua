--[[
    Script Name    : Quests/NorthQeynos/dwarven_fish_delivery.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.11 02:05:12
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Gretta Steinbeard
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to pick up an order of fish from Umli Grayfist.", 1, "Umli Grayfist's order of fish for Gretta won't keep forever.", 2540, 2210135)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Qeynos Harbor")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/merchant_gretta_steinbeard/qey_north/grettasteinbeard_x002.mp3", "", "chuckle", 2938647056, 1980096242, Player)
	AddConversationOption(conversation, "I hope I don't regret this.")
	AddConversationOption(conversation, "I'll be back soon... hopefully.")
	StartConversation(conversation, QuestGiver, Player, "Ah, thank Brell I don't have to go!.. Uh, that you're going to that mudglub Umli.  You'll find him at the harbor down by the docks.  Can't miss him.  He's uglier than a troll woman in a wedding dress! Hah!  And you can tell him I said so!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end
function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I picked up the order of fish from Umli Grayfist.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Umli Grayfist seemed happy enough to do business.")
    UpdateQuestZone(Quest,"North Qeynos")
	AddQuestStepChat(Quest, 2, "I need to deliver this order of fish to Gretta Steinbeard.", 1, "Gretta Steinbeard's order of fish won't keep forever and must be delivered to Irontoe's East in North Qeynos.", 2540, 2220094)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I delivered Gretta Steinbeard's fish order.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Gretta Steinbeard seemed happy to be saved the trouble of picking up her fish.")

	UpdateQuestDescription(Quest, "Fortunately, the fish didn't smell too badly, and I was able to return them to Gretta Steinbeard at Irontoe's East before they turned my stomach.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
