--[[
    Script Name    : Quests/CityofFreeport/the_lost_religion_of_fallen_gate.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.13 09:07:58
    Script Purpose : 

        Zone       : CityofFreeport, Fallen Gate
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

local QuestItemID = 5487 -- copied glyphs item

function Init(Quest)
	AddQuestStep(Quest, 1, "I must find the Gong of Uglan in Fallen Gate.", 1, 100, "I must find the Gong of Uglan in Fallen Gate.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/optional1/mordgraahl_skullsprain/fprt_north/quests/mordgraahlskullsprain/mordgraahlskullsprain_x1_accept.mp3", "", "", 43853459, 3083967033, Player)
	AddConversationOption(conversation, "Very well! Prepare your expeditionary force. I shall return.")
	StartConversation(conversation, QuestGiver, Player, "Take this quill and papyrus. Should you find this gong, copy the runes written upon it. If these runes match those I found in ancient texts, then that shall warrant an expedition.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found the Gong of Uglan and copied the glyphs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found the Gong of Uglan and copied the glyphs.")
    GiveQuestItem(Quest, Player, "I have found the Gong of Uglan and copied the glyphs.", QuestItemID)
	AddQuestStepChat(Quest, 2, "I must return the parchment of glyphs to Drund Mordgraahl Skullsprain in the Temple of War.", 1, "I must return the parchment of glyphs to Drund Mordgraahl Skullsprain in the Temple of War.", 11, 5590243)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given the glyph of the Gong of Uglan to the Drund, Skullsprain, in the Temple of War.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given the glyph of the Gong of Uglan to the Drund, Skullsprain, in the Temple of War.")

	UpdateQuestDescription(Quest, "I offered to help Drund Mordgraahl Skullsprain in Freeport find relics of a lost religion in the depths of Fallen Gate.  I found the Gong of Uglan and copied the glyphs written upon it. This will provide the Drunds with enough proof to request that the Dismal Rage organizes an expedition into Fallen Gate. ")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

