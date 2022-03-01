--[[
    Script Name    : Quests/Antonica/tree_within_a_tree.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.22 08:08:58
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I need to find the tree in the Thundering Steppes.", 10, "I need to find the special tree that Ulinara saw and gather an acorn from it.", 11, 616, 20, 411, 249)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/oracle_ulinara/antonica/oracleulinara003.mp3", "", "", 3594260827, 1990631889, Player)
	AddConversationOption(conversation, "Great, I'm on my way to finding that tree for you.")
	StartConversation(conversation, QuestGiver, Player, "When I peered into the Karma Pool, I saw a constellation of stars that told me where the tree could be found.  Go to the heart of a region called the Thundering Steppes, near the natives.  You will seek a tree within a tree -- one dead and one alive.  When you find it, take a Golden Acorn from its branches and return to me.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the &quot;Tree within a Tree&quot;.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the tree Ulinara sought and foraged an acorn.")

	AddQuestStepChat(Quest, 2, "I must return to Ulinara.", 1, "I should give this acorn to Ulinara.", 84, 120018)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave the acorn to Ulinara.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave the acorn to Ulinara.")

	UpdateQuestDescription(Quest, "I found the tree that Ulinara saw and was able to gather an acorn from it.  That tree was very tall!  She was very pleased and showed me how to use the acorn in a special recipe after I indicated on a map the tree's location. <br> <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

