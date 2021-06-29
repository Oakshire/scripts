--[[
	Script Name		:	Quests/ThievesWay/darkblades_and_dirty_rats.lua
	Script Purpose	:	Handles the quest, "Darkblades and Dirty Rats"
	Script Author	:	premierio015
	Script Date		:	28.06.2021
	Script Notes	:	Auto generated with QuestParser.
    
	Zone			:	Access Quests
	Quest Giver		:	Zatzy
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill Darkblade Brigands to recover a trinket.", 1, 10, "I need to slay the Darkblade Brigands in Thieves' Way to recover a trinket they stole.", 1042, 1540018, 1540023)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	PlayFlavor(QuestGiver, "voiceover/english/zatzy/fprt_sewer01/quests/zatzy/zatzy007.mp3", "", "", 1211611213, 265301277, Player)
	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, QuestGiver, Player, "You will do this for me?  Even though I am so very small?  They took my trinket. You bring it back to me, and I'll tell you where their secret den is.  You do this, okay?")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found the trinket.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed many Darkblades and have recovered the trinket.")

	AddQuestStepChat(Quest, 2, "Return to Zatzy with the trinket.", 1, "Now that I've got the trinket I should return to Zatzy.", 11, 1540001)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've given Zatzy the trinket.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned to Zatzy and given her the trinket.")

	AddQuestStepKill(Quest, 3, "I must kill Zatzy.", 1, 100, "Zatzy betrayed me. She must pay with her life.", 611, 1540001)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I killed Zatzy.")
	UpdateQuestTaskGroupDescription(Quest, 3, "Zatzy tried to betray me.  I had to kill her.")

	UpdateQuestDescription(Quest, "I had a feeling something wasn't on the up and up with that little ratonga. It turns out she wanted me to kill off the Darkblades and recover the key to their secret den so she could plunder without interruptions. I wasn't amused by her scheming; I had to kill her. Now the den is open for me to plunder.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

