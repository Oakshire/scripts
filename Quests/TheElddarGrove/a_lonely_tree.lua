--[[
    Script Name    : Quests/TheElddarGrove/a_lonely_tree.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.10 05:05:53
    Script Purpose : 

        Zone       : TheElddarGrove
        Quest Giver: Warble Wildmane
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to find the Heartwood Tree of the Elddar Grove. ", 4, "I must find the Heartwood Tree of the Elddar Grove and see if I can uncover anything wrong.", 1802, 669, -10, -380 )
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I held the woodsong pendant up to the bark of the mighty Arbos. ")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Arbos, the Heartwood Tree and now have visions of a young Heartwood tree dying in a misty land of goblins and halflings.")

	AddQuestStepLocation(Quest, 2, "I need to find the Elddar tree in a misty thicket.", 4, "I got a vison of a rare Elddar tree, it is dying in a misty thicket. The hills in the vision remind me of the ones I've heard about in the Enchanted Lands. I must find it and help it.", 1802, -592, 8, -737 )
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found Arddin, the Elddar tree of the Enchanted Lands. ")
	UpdateQuestTaskGroupDescription(Quest, 2, "I found Arddin, an Elddar tree in the Enchanted Lands, it is sick and being attacked by a corrupted tree folke.")

	AddQuestStepKill(Quest, 3, "I must slay the evil nymphs near Arddin, the Elddar tree. ", 15, 100, "I must clear the area of the corrupted tree folke, the various evil nymphs.", 611, 390195)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have destroyed many of the twisted tree folke nymphs.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I felt I did all I could for young Arddin the Elddar tree of the Enchanted Lands. I should report back to Warble Wildmane.")

	AddQuestStepChat(Quest, 4, "I must report to Warble Wildmane in the Elddar Grove.", 1, "I must report the existence of Arddin the Elddar Tree of the Enchanted Lands to Warble Wildmane in the Elddar Grove.", 11, 2070066,390194,390193)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have reported the existence of Arddin the Elddar tree in the Enchanted Lands. ")
	UpdateQuestTaskGroupDescription(Quest, 4, "I reported the existence of Arddin the Elddar tree of the Enchanted Lands to Warble Wildmane.")

	UpdateQuestDescription(Quest, "I discovered a young Elddar tree in the Enchanted Lands named Arddin. I have reported its existence to Warble Wildmane. I am sure he and the Elddar Alliance shall see to the well being of the young tree.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
