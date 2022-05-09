--[[
    Script Name    : Quests/TheElddarGrove/recipe_for_duvo.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.09 03:05:10
    Script Purpose : 

        Zone       : TheElddarGrove
        Quest Giver: Duvo
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Penny Goodhearth in North Qeynos. ", 1, "I must speak with Penny Goodhearth at Voleen's Bakery in North Qeynos and retrieve a recipe from her.", 75, 2220030)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"North Qeynos")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/scribe_duvo/qey_elddar/scribeduvo001.mp3", "", "", 2070584741, 1381928487, Player)
	AddConversationOption(conversation, "Okay!  I'll find Penny for you.")
	StartConversation(conversation, QuestGiver, Player, "You must visit the Ironforge family and inquire about the recipie of Penny Goodhearth's.  Miss Goodhearth promised me a recipie for the most scrumptious muffins, and I'm burried under a mountain of papers to scribe! Please pick up the recipie for me immediately!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestZone(Quest,"The Elddar Grove")
	UpdateQuestStepDescription(Quest, 1, "I spoke with Penny Goodhearth.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've picked up the recipe from Penny Goodhearth, the cook of the Ironforge family.")
	AddQuestStepChat(Quest, 2, "I need to return to Scribe Duvo in The Elddar Grove. ", 1, "I must deliver this recipie to Duvo atop the Great Tree Arbos in The Elddar Grove.", 75, 2070044)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I returned to Scribe Duvo.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've delivered the recipe to Scribe Duvo, and he seemed quite pleased to learn what his version was missing.")

	UpdateQuestDescription(Quest, "I found Penny Goodhearth at Voleen's Bakery in North Qeynos, and have undoubtedly met the busiest two halflings ever.  Duvo was so busy that he couldn't even pick up a recipe!  He seemed ecstatic about the recipe, and thanked me whole-heartedly for its retrieval.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
		end
end

