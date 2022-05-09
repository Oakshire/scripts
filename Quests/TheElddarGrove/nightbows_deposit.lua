--[[
    Script Name    : Quests/TheElddarGrove/nightbows_deposit.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.08 10:05:03
    Script Purpose : 

        Zone       : TheElddarGrove
        Quest Giver: Master Archer Nightbow
        Preceded by: Arrows for Fanthis
        Followed by: None
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to take In-Range's deposit to Grisvane Stonearm in the Qeynos Exchange in Qeynos Harbor.", 1, "I need to take In-Range's deposit to Grisvane Stonearm in the Qeynos Exchange in Qeynos Harbor.", 10, 2210222)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Qeynos Harbor")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/master_archer_nightbow/qey_elddar/armsdealernightbow002.mp3", "", "agree", 2931514549, 74273653, Player)
	AddConversationOption(conversation, "I'll bring you back the recipt.")
	StartConversation(conversation, QuestGiver, Player, "A dwarf named Grisvane Stonearm will take the deposit.  You need to peek over the Exchange's counter to find him.  He's been doing the figures for this shop for nearly twenty years, and it just wouldn't do to go to someone else.  Bring a recipt for the deposit when you're done please!")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke with Grisvane Stonearm.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've deposited In-Range's money at the Qeynos Exchange.")

	AddQuestStepChat(Quest, 2, "I need return this recipt to Nightbow at In-Range in the Elddar Grove.", 1, "Nightbow will want this recipt to know that I have made her despot to the Qeynos Exchange.", 75, 2070011)
	AddQuestStepCompleteAction(Quest,2, "QuestComplete")
    UpdateQuestZone(Quest,"The Elddar Grove")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I returned to Armsdealer Nightbow.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned to Nightbow with the recipt for In-Range's money.")

	UpdateQuestDescription(Quest, "I've deposited In-Range's daily earnings with the bank, where I met a dwarf named Grisvane.  The proprietor of the shop, Aysabelle Nightbow, paid me for running the coins over to the bank.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
