--[[
    Script Name    : Quests/TheCommonlands/NarinHeirloom.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.20 08:05:23
    Script Purpose : 

        Zone       : TheCommonlands, Fallen Gate
        Quest Giver: V'Tal Narin
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I am looking for V'tal's brother and the heirloom", 1, 100, "I am looking for V'tal's brother and the heirloom.  Her brother may have gone down to help the Thexians excavate the Hall of the Fallen.", 1046)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What was your brother looking for?", "Continue")
	StartConversation(conversation, QuestGiver, Player, "Excellent ... in the last letter I received from him, he said he found my family's heirloom and was returning with it.  I have not heard from him since.")
	PlayFlavor(NPC, "voiceover/english/v_tal_narin/commonlands/quests/vtalnarin/vtalnarin005.mp3", "", "", 3927176102, 1208729032, Spawn)
end

function Continue(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What if your brother is no longer alive?", "Continue2")
	StartConversation(conversation, QuestGiver, Player, "That is information you need not know.  My brother took a small lockbox to carry the item.  When you find him, he should have the box.")
	PlayFlavor(NPC, "voiceover/english/v_tal_narin/commonlands/quests/vtalnarin/vtalnarin006.mp3", "", "", 2007241749, 1986842596, Spawn)
end



function Continue2(Quest, QuestGiver, Player)
  	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll return once I have found your brother and the box.")
	StartConversation(conversation, QuestGiver, Player, "If that is so, then bring me just the box. It is made of dark wood and has a falcon engraved on its lid.")
	PlayFlavor(NPC, "voiceover/english/v_tal_narin/commonlands/quests/vtalnarin/vtalnarin007.mp3", "", "", 1495924345, 491648823, Spawn)
end
  
    

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found her brother and the heirloom.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found her brother and the heirloom.")

	AddQuestStepChat(Quest, 2, "I need to return to V'tal", 1, "I need to return to V'tal and tell her what I have found.", 11, 330173)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned the lockbox to V'tal and told her about her brother.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned the lockbox to V'tal and told her about her brother.")

	UpdateQuestDescription(Quest, "V'tal Narin's brother was dead, but I found the box and returned it to her.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
