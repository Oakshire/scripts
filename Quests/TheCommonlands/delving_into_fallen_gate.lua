--[[
    Script Name    : Quests/TheCommonlands/delving_into_fallen_gate.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.20 07:07:50
    Script Purpose : 

        Zone       : TheCommonlands
        Quest Giver: Tundis N'oxyle
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must find a Teir'Dal journal", 1, 50, "I'm looking for the journal of one of the inhabitants of the old Neriak Foreign Quarter, an area that is now known as the Fallen Gate. The battlemages of ages past have been known to keep journals accounting all that transpires.", 75, 1190052)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/tundis_n_oxyle/commonlands/quests/tundisnoxyle/qst_tundisnoxyle_x1_accept.mp3", "", "", 1593263968, 323559058, Player)
	AddConversationOption(conversation, "I will return then, and triumph where others have failed.")
	StartConversation(conversation, QuestGiver, Player, "Return to me when you have found something of note. I am particularly interested in pieces of lore, not trinkets. Many Teir'dal of that time kept journals, perhaps you can find one that may be of use to me.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found a Teir'Dal journal.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've successfully recovered a journal from the remains of an undead inhabitant of the Fallen Gate.")

	AddQuestStepChat(Quest, 2, "I should return to Tundis N'oxyle", 1, "I've found a Teir'dal journal in the ruins, I should return to Tundis with my find.", 11, 330394)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Tundis N'oxyle")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned the journal I found in the Fallen Gate to Tundis.")

	UpdateQuestDescription(Quest, "I uncovered one of the journals of the inhabitants of Neriak, and returned with it to Tundis N'oxyle.  I anticipated his reaction to such valuable information would under-play the significance of the find.  There was the vaguest hint of surprise and lack of comprehension as he leafed through the book.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

